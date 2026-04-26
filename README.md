# docpler — Claude Code Plugin

Claude Code plugin for converting HWP (Korean word processor) documents to Markdown.

## Installation

```bash
claude plugin install docpler/docpler-claude-plugin
```

The binary for your platform is automatically downloaded during installation.

## Usage

Once installed, Claude Code can automatically convert HWP files:

- Ask Claude to read an HWP file and it will use `docpler convert` to parse it
- Use `/docpler:hwp-convert` to explicitly invoke the conversion skill

## Example

```
> Please read and summarize the contents of report.hwp
```

Claude will automatically detect the `.hwp` file and convert it to Markdown.

---

# 한국어

HWP(한글 워드프로세서) 문서를 Markdown으로 변환하는 Claude Code 플러그인입니다.

## 설치

```bash
claude plugin install docpler/docpler-claude-plugin
```

설치 시 플랫폼에 맞는 바이너리가 자동으로 다운로드됩니다.

## 사용법

설치 후 Claude Code에서 HWP 파일을 자동으로 변환할 수 있습니다:

- HWP 파일을 읽어달라고 요청하면 자동으로 `docpler convert`를 사용합니다
- `/docpler:hwp-convert`로 직접 변환 스킬을 호출할 수 있습니다

---

## License

[Elastic License 2.0 (ELv2)](https://www.elastic.co/licensing/elastic-license) — Free to use, cannot be provided as a hosted/managed service, license-key circumvention prohibited, copyright/trademark notices must be preserved.

## HWP Format Notice

This product was developed with reference to the HWP document file (.hwp) specification published by [Hancom](https://www.hancom.com/etc/hwpDownload.do).

본 제품은 한글과컴퓨터의 한글 문서 파일(.hwp) 공개 문서를 참고하여 개발하였습니다.
