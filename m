Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F62C1A9B92
	for <lists+kexec@lfdr.de>; Wed, 15 Apr 2020 12:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NA5TPmoHUWPoiR0VOdkR4S20/S1f/LmMDBo/cjzMWwI=; b=O+UTX7d3NuVr7P
	7Np9SkrjzPjp8fNm1UvqdbwVAm39uuLGfIr+Mw3LDfGr9+obwm5MWPVOLrqHIvyCONl/5Vad5hNXy
	hP8TglsTx0pkHQcSK8/5+VWel8sCP20Cz4Iu/Jk9h+Dp4XjCKn7NkMFQYOvREX1YIIw2jAJMFz63c
	0a8+2hZ2YmUylu55E00NQuG0lsGBRI695jmG05ZHdCnl2yWW6XP8+zgCjVTtNAgPLoSXBii/Guy4+
	y8r4e3VavRAc2qi7WIbbE8mwi/qaUivvE/gqW3S3rcq2uhpbYElTpEnQlPc6QSOzjDhfL9UdV0IdF
	phhgiy4/ZOPIgwqk/PMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfl4-00032p-EO; Wed, 15 Apr 2020 10:59:06 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfl0-0002zv-9B
 for kexec@lists.infradead.org; Wed, 15 Apr 2020 10:59:04 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200415105900euoutp02b6f1b00978686e8586188514d16a647a~F_RuQJsWC2815628156euoutp02Y
 for <kexec@lists.infradead.org>; Wed, 15 Apr 2020 10:59:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200415105900euoutp02b6f1b00978686e8586188514d16a647a~F_RuQJsWC2815628156euoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586948340;
 bh=l9HQTn3CdmDqvpR3+icbviGtxkKmLvG3Vbijr794inM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bbaHumXyERwS97cDVNSI8xbQGCKoQ+aUCbGYb2z28mLu2vwSh00GgH95Ma4TeaIu/
 r649tOJouNlsOpuG4nk7cd7vknfeuZ9jSAND3wEgIL/7o9IK87h/cah9tOHqHwDKaN
 y9b0gXLVXjpUFr7dClVMPKpaiKKOI7YtlCHCfGnA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200415105900eucas1p12b3e137587debeba2238baeac66f669b~F_RuEksLc1407214072eucas1p13;
 Wed, 15 Apr 2020 10:59:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A1.76.61286.4F8E69E5; Wed, 15
 Apr 2020 11:59:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200415105859eucas1p2db849d89aa9a338077a01784f73dad52~F_Rtw8L2E3075330753eucas1p29;
 Wed, 15 Apr 2020 10:58:59 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200415105859eusmtrp177a117fade121a206a2397b645f40a5e~F_Rtvf6sU1592815928eusmtrp1a;
 Wed, 15 Apr 2020 10:58:59 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-9c-5e96e8f4bc2a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 8D.47.08375.3F8E69E5; Wed, 15
 Apr 2020 11:58:59 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200415105859eusmtip1a7c24e8c2650686b0563055b0d5a28f4~F_RtmfyH_2429724297eusmtip12;
 Wed, 15 Apr 2020 10:58:59 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: horms@verge.net.au, kexec@lists.infradead.org
Subject: [PATCH v2] arm: redefine OPT_APPEND and OPT_RAMDISK
Date: Wed, 15 Apr 2020 12:58:45 +0200
Message-Id: <20200415105845.22067-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200414085224.7069-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHIsWRmVeSWpSXmKPExsWy7djPc7pfXkyLMzi8ks+ieetXRovdp78y
 Wdw8tILRgdlj85J6j74tqxg95vz8xhLAHMVlk5Kak1mWWqRvl8CV8XHXZ/aCk3wV57sfsDYw
 LuTpYuTkkBAwkfi/8DtTFyMXh5DACkaJvml/2CGcL4wSG3tfsUE4nxklJl5rYodpubhxOyOI
 LSSwnFHicK89RNFzRoljH5awgiTYBBwl+peeALNFBAwlth+5CmYzC9hLTJz1nw3EFhawkfi1
 fTWYzSKgKrH90Qkwm1fAWuLn0RZWiGXyErMbT4PFOYHiPU8vs0LUCEqcnPmEBcTmF9CSWNN0
 nQVivrxE89bZzCAHSQg0s0vsOrIF6FIOIMdF4t1hKYiZwhKvjm+BekZG4vTkHhaIknqJyZPM
 IFp7GCW2zfnBAlFjLXHn3C82kBpmAU2J9bv0IcKOEscu/mCFaOWTuPFWEOICPolJ26YzQ4R5
 JTrahCCqVSTW9e+BGigl0ftqBeMERqVZSH6ZheT+WQi7FjAyr2IUTy0tzk1PLTbMSy3XK07M
 LS7NS9dLzs/dxAhMFaf/Hf+0g/HrpaRDjAIcjEo8vCfWTI0TYk0sK67MPcQowcGsJMK7Phco
 xJuSWFmVWpQfX1Sak1p8iFGag0VJnNd40ctYIYH0xJLU7NTUgtQimCwTB6dUA2PXkejAtPfl
 qXsn7X/LZauaevHGae7LD50PFJv7qi1o/OUZLXrITfr2yone76yMFQ4tsupuZfD5xWup+u5m
 YScfR/eVnL6HMeYFX/bKsrK+sGb90Zn66pnnm6v75CUWyG3hmF3L++zXMoXbWuVLFsnPSk0r
 68jlyD7HtLmF/7bmlKR+FZnNTkosxRmJhlrMRcWJAFu1MesRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAIsWRmVeSWpSXmKPExsVy+t/xu7qfX0yLM7jx0sKieetXRovdp78y
 Wdw8tILRgdlj85J6j74tqxg95vz8xhLAHKVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CX8XHXZ/aCk3wV57sfsDYwLuTpYuTkkBAwkbi4cTtjFyMX
 h5DAUkaJ43+XsXUxcgAlpCRWzk2HqBGW+HOtiw2i5imjRGPDFXaQBJuAo0T/0hOsILaIgLHE
 5rYFYDazgL3ExFn/2UBsYQEbiV/bV4PZLAKqEtsfnQCzeQWsJX4ebWGFWCAvMbvxNFicEyje
 8/QyWFxIwEri3dFfrBD1ghInZz5hAbmNWUBdYv08IZAwv4CWxJqm6ywQa+UlmrfOZp7AKDQL
 SccshI5ZSKoWMDKvYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIyNbcd+bt7BeGlj8CFGAQ5G
 JR7eE2umxgmxJpYVV+YeYpTgYFYS4V2fCxTiTUmsrEotyo8vKs1JLT7EaAr05kRmKdHkfGDc
 5pXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYGSZInXKx7sj0WYX
 s9A6u4/RbmdaWNMuR02xc2ef+GwNc/aCt/kHjh+TS1LY/rffymPpJrbHC5wVJiTvfrw9/3Kn
 hs3RP1cUZ7dam7366X8u/9F8+fvu+4R2StcbHZ8jPPfhdW/myxZesYx6KY9aFLfE/X6YudDs
 88x1QtrCHa3XRMI+TbTbVq7EUpyRaKjFXFScCACmEVhEowIAAA==
X-CMS-MailID: 20200415105859eucas1p2db849d89aa9a338077a01784f73dad52
X-Msg-Generator: CA
X-RootMTR: 20200415105859eucas1p2db849d89aa9a338077a01784f73dad52
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200415105859eucas1p2db849d89aa9a338077a01784f73dad52
References: <20200414085224.7069-1-l.stelmach@samsung.com>
 <CGME20200415105859eucas1p2db849d89aa9a338077a01784f73dad52@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_035902_648540_F3521160 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

UmVkZWZpbmUgT1BUX0FQUEVORCB0byBhdm9pZCBjbGFzaCB3aXRoIE9QVF9LRVhFQ19TWVNDQUxM
X0FVVE8uClJlZGVmaW5lIE9QVF9SQU1ESVNLIHRvIGF2b2lkIHN1Y2ggcHJvYmxlbXMgaW4gdGhl
IGZ1dHVyZQoKU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1z
dW5nLmNvbT4KLS0tCiBrZXhlYy9hcmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oIHwgNiAr
KystLS0KIGtleGVjL2FyY2gvYXJtL2tleGVjLXpJbWFnZS1hcm0uYyAgICAgfCAyICstCiAyIGZp
bGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9rZXhlYy9hcmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oIGIva2V4ZWMvYXJjaC9hcm0v
aW5jbHVkZS9hcmNoL29wdGlvbnMuaAppbmRleCBhYmJmMzQ5Li42ZmFiZmI3IDEwMDY0NAotLS0g
YS9rZXhlYy9hcmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oCisrKyBiL2tleGVjL2FyY2gv
YXJtL2luY2x1ZGUvYXJjaC9vcHRpb25zLmgKQEAgLTQsMTIgKzQsMTIgQEAKICNkZWZpbmUgT1BU
X0RUX05PX09MRF9ST09UCShPUFRfTUFYKzApCiAjZGVmaW5lIE9QVF9BUkNIX01BWAkJKE9QVF9N
QVgrMSkKIAotI2RlZmluZSBPUFRfQVBQRU5ECSdhJwotI2RlZmluZSBPUFRfUkFNRElTSwkncicK
ICNkZWZpbmUgT1BUX0RUQgkJKE9QVF9BUkNIX01BWCswKQogI2RlZmluZSBPUFRfQVRBR1MJKE9Q
VF9BUkNIX01BWCsxKQogI2RlZmluZSBPUFRfSU1BR0VfU0laRQkoT1BUX0FSQ0hfTUFYKzIpCiAj
ZGVmaW5lIE9QVF9QQUdFX09GRlNFVAkoT1BUX0FSQ0hfTUFYKzMpCisjZGVmaW5lIE9QVF9BUFBF
TkQJKE9QVF9BUkNIX01BWCs0KQorI2RlZmluZSBPUFRfUkFNRElTSwkoT1BUX0FSQ0hfTUFYKzUp
CiAKIC8qIE9wdGlvbnMgcmVsZXZhbnQgdG8gdGhlIGFyY2hpdGVjdHVyZSAoZXhjbHVkaW5nIGxv
YWRlci1zcGVjaWZpYyBvbmVzKSwKICAqIGluIHRoaXMgY2FzZSBub25lOgpAQCAtNDUsNyArNDUs
NyBAQAogCXsgImltYWdlLXNpemUiLAkJMSwgMCwgT1BUX0lNQUdFX1NJWkUgfSwgXAogCXsgInBh
Z2Utb2Zmc2V0IiwJMSwgMCwgT1BUX1BBR0VfT0ZGU0VUIH0sCiAKLSNkZWZpbmUgS0VYRUNfQUxM
X09QVF9TVFIgS0VYRUNfQVJDSF9PUFRfU1RSICJhOnI6czoiCisjZGVmaW5lIEtFWEVDX0FMTF9P
UFRfU1RSIEtFWEVDX0FSQ0hfT1BUX1NUUiAiIgogCiBleHRlcm4gdW5zaWduZWQgaW50IGtleGVj
X2FybV9pbWFnZV9zaXplOwogCmRpZmYgLS1naXQgYS9rZXhlYy9hcmNoL2FybS9rZXhlYy16SW1h
Z2UtYXJtLmMgYi9rZXhlYy9hcmNoL2FybS9rZXhlYy16SW1hZ2UtYXJtLmMKaW5kZXggMmE3ZWVh
OS4uZDFhYThmNiAxMDA2NDQKLS0tIGEva2V4ZWMvYXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5j
CisrKyBiL2tleGVjL2FyY2gvYXJtL2tleGVjLXpJbWFnZS1hcm0uYwpAQCAtNDE4LDcgKzQxOCw3
IEBAIGludCB6SW1hZ2VfYXJtX2xvYWQoaW50IGFyZ2MsIGNoYXIgKiphcmd2LCBjb25zdCBjaGFy
ICpidWYsIG9mZl90IGxlbiwKIAkJeyAicGFnZS1vZmZzZXQiLAkxLCAwLCBPUFRfUEFHRV9PRkZT
RVQgfSwKIAkJeyAwLCAJCQkwLCAwLCAwIH0sCiAJfTsKLQlzdGF0aWMgY29uc3QgY2hhciBzaG9y
dF9vcHRpb25zW10gPSBLRVhFQ19BUkNIX09QVF9TVFIgImE6cjoiOworCXN0YXRpYyBjb25zdCBj
aGFyIHNob3J0X29wdGlvbnNbXSA9IEtFWEVDX0FSQ0hfT1BUX1NUUiAiIjsKIAogCS8qCiAJICog
UGFyc2UgdGhlIGNvbW1hbmQgbGluZSBhcmd1bWVudHMKLS0gCjIuMjUuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdApr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8va2V4ZWMK
