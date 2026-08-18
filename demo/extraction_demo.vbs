Option Explicit

Dim fso
Dim inputFile
Dim outputFile
Dim logFile

Dim baseFolder
Dim inputPath
Dim outputPath
Dim logPath

Dim header
Dim line

Dim chunkSize
Dim chunkNumber
Dim recordsInChunk
Dim totalRecords

Set fso = CreateObject("Scripting.FileSystemObject")

' Find the project folder
baseFolder = fso.GetParentFolderName(WScript.ScriptFullName)

inputPath = fso.BuildPath(baseFolder, "input\orders.csv")
outputPath = fso.BuildPath(baseFolder, "output\extracted_orders.csv")
logPath = fso.BuildPath(baseFolder, "output\extraction_log.txt")

' Open the input CSV
Set inputFile = fso.OpenTextFile(inputPath, 1)

' Read the column names
header = inputFile.ReadLine

' Create output files
Set outputFile = fso.CreateTextFile(outputPath, True)
Set logFile = fso.CreateTextFile(logPath, True)

outputFile.WriteLine header

logFile.WriteLine "FICTIONAL DATA EXTRACTION DEMONSTRATION"
logFile.WriteLine "======================================"
logFile.WriteLine "Input file: orders.csv"
logFile.WriteLine ""

' Process 3 records at a time
chunkSize = 3
chunkNumber = 1
recordsInChunk = 0
totalRecords = 0

' Read each record
Do Until inputFile.AtEndOfStream

    line = inputFile.ReadLine

    If Trim(line) <> "" Then

        totalRecords = totalRecords + 1
        recordsInChunk = recordsInChunk + 1

        ' Write the record to the output file
        outputFile.WriteLine line

        ' When 3 records are processed, log the chunk
        If recordsInChunk = chunkSize Then

            logFile.WriteLine "Processing Chunk " & chunkNumber & "..."
            logFile.WriteLine "Chunk " & chunkNumber & " completed successfully."
            logFile.WriteLine "Records processed: " & recordsInChunk
            logFile.WriteLine ""

            chunkNumber = chunkNumber + 1
            recordsInChunk = 0

        End If

    End If

Loop

' Process the final chunk
If recordsInChunk > 0 Then

    logFile.WriteLine "Processing Chunk " & chunkNumber & "..."
    logFile.WriteLine "Chunk " & chunkNumber & " completed successfully."
    logFile.WriteLine "Records processed: " & recordsInChunk
    logFile.WriteLine ""

End If

' Finish
logFile.WriteLine "Extraction completed successfully."
logFile.WriteLine "Total records processed: " & totalRecords
logFile.WriteLine "Output file: extracted_orders.csv"

inputFile.Close
outputFile.Close
logFile.Close

WScript.Echo "Extraction completed successfully!"
WScript.Echo "Records processed: " & totalRecords
WScript.Echo "Chunks processed: " & chunkNumber