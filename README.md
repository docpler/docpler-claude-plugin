# docpler — Claude Code Plugin

Claude Code plugin for converting HWP (Korean word processor) documents to Markdown.

## Installation

```bash
claude plugin install docpler/docpler-claude-plugin
```

After installing, run the setup script to download the binary:

```bash
bash ~/.claude/plugins/cache/docpler/scripts/install.sh
```

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

설치 후 바이너리 다운로드:

```bash
bash ~/.claude/plugins/cache/docpler/scripts/install.sh
```

## 사용법

설치 후 Claude Code에서 HWP 파일을 자동으로 변환할 수 있습니다:

- HWP 파일을 읽어달라고 요청하면 자동으로 `docpler convert`를 사용합니다
- `/docpler:hwp-convert`로 직접 변환 스킬을 호출할 수 있습니다

---

## License

MIT

## HWP Format Notice

This product was developed with reference to the HWP document file (.hwp) specification published by [Hancom](https://www.hancom.com/etc/hwpDownload.do).

본 제품은 한글과컴퓨터의 한글 문서 파일(.hwp) 공개 문서를 참고하여 개발하였습니다.
