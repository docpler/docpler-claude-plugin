---
name: hwp-convert
description: Convert Korean HWP (한글) document files to Markdown. Use when encountering .hwp files.
user-invocable: true
allowed-tools: Bash Read
---

# HWP Document Conversion

When you encounter an HWP file (Korean word processor format), use the `docpler` CLI to convert it to Markdown.

## Convert and read

```bash
docpler convert <path-to-file.hwp>
```

This outputs Markdown to stdout.

## Save to file

```bash
docpler convert <path-to-file.hwp> -o <output.md>
```

## Notes
- HWP is the native format of Hangul Word Processor, widely used in South Korea for government, legal, and academic documents
- Supports paragraphs, tables, equations, and text boxes
- Password-protected HWP files are not supported
