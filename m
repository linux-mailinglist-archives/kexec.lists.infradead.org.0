Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEF61B4D96
	for <lists+kexec@lfdr.de>; Wed, 22 Apr 2020 21:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAwc2pOVvECS80ePTJTio0f0z7WExMEum+5R0KtReOA=; b=hDQxiJ029VRIRP
	lugceuKqr3Ny/WaIL0vUHC7wrpFUU+wv5Rad51Ocge6BE31Zsu7Y0H+K7pqUbrQVzu3RpBMgj4XSO
	ggUl2gUzjIREvJxUxEQVAcbnQlsTqJUnOyMs06Du1iNArz0uzNopWadauyQoCRJboZYP/SB7bIyEZ
	evLAf3b8dTd0kJCHqzYDqhmJIkhUquleqV/zxxrPWaqNUhc0Fwfu+0NybWJV6AP7Kbrsjcml+gZlq
	6LMuDxaOkmkWsE4/eIRp3BvTr0dg3Hy0g6tmOEViy9rOt4ezs2Gk0Qsal/T7uaICiuiv/WMwCPfie
	aJDGVDITHrDpUpCHAbjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRLJD-000446-IP; Wed, 22 Apr 2020 19:45:23 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRLJB-00042n-2B
 for kexec@lists.infradead.org; Wed, 22 Apr 2020 19:45:22 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200422194518euoutp012cdbabfb094c42320ab7bcfd27a9b9d4~IO_PO-hGQ3095730957euoutp01X
 for <kexec@lists.infradead.org>; Wed, 22 Apr 2020 19:45:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200422194518euoutp012cdbabfb094c42320ab7bcfd27a9b9d4~IO_PO-hGQ3095730957euoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587584718;
 bh=P+wqsk3UqmGahUgrO96GaoQPhHPbBYhBGBSnT17ZHzg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GJ7Sc3lIIR1xs1JfW5MffHH0HzB9NdAO342L7yrDnCaZy0wQg3NlquWM0vmR1FOa3
 XrHfF7bgFXXt7eegSaA5h5ZuVYwDJenHm6wJCdaJFSMwNhdueAZEBrZi7uT2nkZ6YE
 QxEXekfHh12dgx44pOAOwTmjTGzFx9njgNxDgKV8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200422194518eucas1p14efc66bd483e0a30c262a15cba870f02~IO_PFYwPA1211912119eucas1p15;
 Wed, 22 Apr 2020 19:45:18 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 70.70.60698.DCE90AE5; Wed, 22
 Apr 2020 20:45:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200422194517eucas1p11d2ab9f4f68b891ea963633045f31ce9~IO_OOmEo80152701527eucas1p1M;
 Wed, 22 Apr 2020 19:45:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200422194517eusmtrp13c7234955d36b03293c6757de29c96e8~IO_OODHRZ1959319593eusmtrp1y;
 Wed, 22 Apr 2020 19:45:17 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-26-5ea09ecd6936
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B1.29.08375.DCE90AE5; Wed, 22
 Apr 2020 20:45:17 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200422194517eusmtip2317e70491843f3c8c402258ccc5f059b~IO_OE_-1N2806628066eusmtip2j;
 Wed, 22 Apr 2020 19:45:16 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: horms@verge.net.au, svens@stackframe.org, kexec@lists.infradead.org
Subject: [PATCH v3] arm: redefine OPT_APPEND and OPT_RAMDISK
Date: Wed, 22 Apr 2020 21:45:04 +0200
Message-Id: <20200422194504.14775-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200422080151.GA32200@vergenet.net>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgleLIzCtJLcpLzFFi42LZduznOd1z8xbEGbQqWTRv/cposfv0VyaL
 m4dWMFrMOP2R1YHFY/OSeo++LasYPT7e+8PiMefnN5YAligum5TUnMyy1CJ9uwSujKUbmtgK
 ZklW9Mx/ztjA+Eeki5GTQ0LAROL0i7nMXYxcHEICKxglVnSsYodwvjBK3Pl5FirzmVHiy61u
 li5GDrCW/r3iEPHljBLr+qeyQTjPGSUa7h1mB5nLJuAo0b/0BCuILSLgLvHs4zMWEJtZwF5i
 4qz/bCC2sICNxLQvaxhBbBYBVYm9u56B1fMKWEu0bnnKBnGfvMTsxtNgNqeAkcSzFVfZIWoE
 JU7OfAI2k19AS2JN03Wo+fISzVtng10tITCdXWJz33RGiEEuEjOv/mGCsIUlXh3fwg5hy0ic
 ntwD9Vm9xORJZhC9PYwS2+b8YIGosZa4c+4XG0gNs4CmxPpd+hBhR4l/86ewQ7TySdx4Kwhx
 Ap/EpG3TmSHCvBIdbUIQ1SrAoNoDNVBKovfVCsYJjEqzkDwzC8kDsxB2LWBkXsUonlpanJue
 Wmycl1quV5yYW1yal66XnJ+7iRGYPk7/O/51B+O+P0mHGAU4GJV4eCMUF8QJsSaWFVfmHmKU
 4GBWEuHd8HBenBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFe40UvY4UE0hNLUrNTUwtSi2CyTByc
 Ug2MPZ8mXv77rGCZpriZkfj3bMGLNftizU7YSKvpPzZt+pGyYluzX9Tcs0ynpv13fGJXcvV/
 wqNvu1Jn87a2r2Oeq6caUSAe029/Z9LG7NKd9wovV+plun7piGDoClp5/8UhDRl/M0Gl7WYe
 91JutLMfmigizZ/sulz+wIdvL9cWPYmfqO7tfG6iEktxRqKhFnNRcSIAd4JjFxsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7pn5y2IM5i9gNOieetXRovdp78y
 Wdw8tILRYsbpj6wOLB6bl9R79G1Zxejx8d4fFo85P7+xBLBE6dkU5ZeWpCpk5BeX2CpFG1oY
 6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl6GUs3dDEVjBLsqJn/nPGBsY/Il2MHBwS
 AiYS/XvFuxi5OIQEljJKPJg+mREiLiWxcm56FyMnkCks8edaFxtEzVNGiemPb7CDJNgEHCX6
 l55gBakXEfCWeH88HiTMLGAvMXHWfzYQW1jARmLalzWMIDaLgKrE3l3PWEFsXgFridYtT9kg
 5stLzG48DWZzChhJPFtxFWy8kIChxNoj15kg6gUlTs58wgKyillAXWL9PCGQML+AlsSapuss
 EGvlJZq3zmaewCg0C0nHLISOWUiqFjAyr2IUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMlW3H
 fm7ewXhpY/AhRgEORiUe3gjFBXFCrIllxZW5hxglOJiVRHg3PJwXJ8SbklhZlVqUH19UmpNa
 fIjRFOjNicxSosn5wDjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TB
 KdXAaBxw6nn4t1mPnAufTSl7Yzv18KKDGnl5D/bWtt5LC/nupPG6+yN37RLrgDz+HxwJv86k
 6L6P+np7jftsxUPXPj5uss5PXbs/+OLyafk32mad1Hn4reLgBcsiG5bnN97eE/V6dWID69YT
 umwHny3w28hbHuUgfH3x/JSewyk7spkKOXYVz+Cvm6fEUpyRaKjFXFScCAAyQ7XAqwIAAA==
X-CMS-MailID: 20200422194517eucas1p11d2ab9f4f68b891ea963633045f31ce9
X-Msg-Generator: CA
X-RootMTR: 20200422194517eucas1p11d2ab9f4f68b891ea963633045f31ce9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200422194517eucas1p11d2ab9f4f68b891ea963633045f31ce9
References: <20200422080151.GA32200@vergenet.net>
 <CGME20200422194517eucas1p11d2ab9f4f68b891ea963633045f31ce9@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_124521_307608_CA4598FF 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
IGZ1dHVyZQoKTWlub3IgY2xlYW51cCBpbiBIUFBBIHRvby4KClNpZ25lZC1vZmYtYnk6IMWBdWth
c3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0tLQpTdmVuLAoKSSByZW1vdmVk
IHNvbWUgYXJjaCBzcGVjaWZpYyBzaG9ydCBvcHRpb25zIHdoaWNoIHRvIG1lIGRvbid0IHNlZW0K
YmUgaGFuZGxlZCBpbiB0aGUgZ2V0b3B0X2xvbmcoKSBsb29wIGluIGtleGVjLWVsZi1ocHBhLmMu
IFBsZWFzZSB0ZWxsIHVzLAppZiBpdCBkb2Vzbid0IGJyZWFrIGFueXRoaW5nLgoKS2luZCByZWdh
cmRzLArFgVMKCiBrZXhlYy9hcmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oICB8IDYgKysr
LS0tCiBrZXhlYy9hcmNoL2FybS9rZXhlYy16SW1hZ2UtYXJtLmMgICAgICB8IDIgKy0KIGtleGVj
L2FyY2gvaHBwYS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oIHwgMiArLQoga2V4ZWMvYXJjaC9ocHBh
L2tleGVjLWVsZi1ocHBhLmMgICAgICAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9rZXhlYy9hcmNoL2FybS9pbmNs
dWRlL2FyY2gvb3B0aW9ucy5oIGIva2V4ZWMvYXJjaC9hcm0vaW5jbHVkZS9hcmNoL29wdGlvbnMu
aAppbmRleCBhYmJmMzQ5Li42ZmFiZmI3IDEwMDY0NAotLS0gYS9rZXhlYy9hcmNoL2FybS9pbmNs
dWRlL2FyY2gvb3B0aW9ucy5oCisrKyBiL2tleGVjL2FyY2gvYXJtL2luY2x1ZGUvYXJjaC9vcHRp
b25zLmgKQEAgLTQsMTIgKzQsMTIgQEAKICNkZWZpbmUgT1BUX0RUX05PX09MRF9ST09UCShPUFRf
TUFYKzApCiAjZGVmaW5lIE9QVF9BUkNIX01BWAkJKE9QVF9NQVgrMSkKIAotI2RlZmluZSBPUFRf
QVBQRU5ECSdhJwotI2RlZmluZSBPUFRfUkFNRElTSwkncicKICNkZWZpbmUgT1BUX0RUQgkJKE9Q
VF9BUkNIX01BWCswKQogI2RlZmluZSBPUFRfQVRBR1MJKE9QVF9BUkNIX01BWCsxKQogI2RlZmlu
ZSBPUFRfSU1BR0VfU0laRQkoT1BUX0FSQ0hfTUFYKzIpCiAjZGVmaW5lIE9QVF9QQUdFX09GRlNF
VAkoT1BUX0FSQ0hfTUFYKzMpCisjZGVmaW5lIE9QVF9BUFBFTkQJKE9QVF9BUkNIX01BWCs0KQor
I2RlZmluZSBPUFRfUkFNRElTSwkoT1BUX0FSQ0hfTUFYKzUpCiAKIC8qIE9wdGlvbnMgcmVsZXZh
bnQgdG8gdGhlIGFyY2hpdGVjdHVyZSAoZXhjbHVkaW5nIGxvYWRlci1zcGVjaWZpYyBvbmVzKSwK
ICAqIGluIHRoaXMgY2FzZSBub25lOgpAQCAtNDUsNyArNDUsNyBAQAogCXsgImltYWdlLXNpemUi
LAkJMSwgMCwgT1BUX0lNQUdFX1NJWkUgfSwgXAogCXsgInBhZ2Utb2Zmc2V0IiwJMSwgMCwgT1BU
X1BBR0VfT0ZGU0VUIH0sCiAKLSNkZWZpbmUgS0VYRUNfQUxMX09QVF9TVFIgS0VYRUNfQVJDSF9P
UFRfU1RSICJhOnI6czoiCisjZGVmaW5lIEtFWEVDX0FMTF9PUFRfU1RSIEtFWEVDX0FSQ0hfT1BU
X1NUUiAiIgogCiBleHRlcm4gdW5zaWduZWQgaW50IGtleGVjX2FybV9pbWFnZV9zaXplOwogCmRp
ZmYgLS1naXQgYS9rZXhlYy9hcmNoL2FybS9rZXhlYy16SW1hZ2UtYXJtLmMgYi9rZXhlYy9hcmNo
L2FybS9rZXhlYy16SW1hZ2UtYXJtLmMKaW5kZXggOTg0NTkyNS4uZmY2MDllMiAxMDA2NDQKLS0t
IGEva2V4ZWMvYXJjaC9hcm0va2V4ZWMtekltYWdlLWFybS5jCisrKyBiL2tleGVjL2FyY2gvYXJt
L2tleGVjLXpJbWFnZS1hcm0uYwpAQCAtNDA5LDcgKzQwOSw3IEBAIGludCB6SW1hZ2VfYXJtX2xv
YWQoaW50IGFyZ2MsIGNoYXIgKiphcmd2LCBjb25zdCBjaGFyICpidWYsIG9mZl90IGxlbiwKIAkJ
eyAicGFnZS1vZmZzZXQiLAkxLCAwLCBPUFRfUEFHRV9PRkZTRVQgfSwKIAkJeyAwLCAJCQkwLCAw
LCAwIH0sCiAJfTsKLQlzdGF0aWMgY29uc3QgY2hhciBzaG9ydF9vcHRpb25zW10gPSBLRVhFQ19B
UkNIX09QVF9TVFIgImE6cjoiOworCXN0YXRpYyBjb25zdCBjaGFyIHNob3J0X29wdGlvbnNbXSA9
IEtFWEVDX0FSQ0hfT1BUX1NUUiAiIjsKIAogCS8qCiAJICogUGFyc2UgdGhlIGNvbW1hbmQgbGlu
ZSBhcmd1bWVudHMKZGlmZiAtLWdpdCBhL2tleGVjL2FyY2gvaHBwYS9pbmNsdWRlL2FyY2gvb3B0
aW9ucy5oIGIva2V4ZWMvYXJjaC9ocHBhL2luY2x1ZGUvYXJjaC9vcHRpb25zLmgKaW5kZXggYTkz
NjE0MC4uZTlkZWI1MSAxMDA2NDQKLS0tIGEva2V4ZWMvYXJjaC9ocHBhL2luY2x1ZGUvYXJjaC9v
cHRpb25zLmgKKysrIGIva2V4ZWMvYXJjaC9ocHBhL2luY2x1ZGUvYXJjaC9vcHRpb25zLmgKQEAg
LTE3LDcgKzE3LDcgQEAKIAl7ICJyYW1kaXNrIiwJCTEsIDAsIE9QVF9SQU1ESVNLIH0sCiAKIAot
I2RlZmluZSBLRVhFQ19BTExfT1BUX1NUUiBLRVhFQ19BUkNIX09QVF9TVFIgImE6cjpzOiIKKyNk
ZWZpbmUgS0VYRUNfQUxMX09QVF9TVFIgS0VYRUNfQVJDSF9PUFRfU1RSICIiCiAKIC8qIFNlZSB0
aGUgb3RoZXIgYXJjaGl0ZWN0dXJlcyBmb3IgZGV0YWlscyBvZiB0aGVzZTsgSFBQQSBoYXMgbm8K
ICAqIGxvYWRlci1zcGVjaWZpYyBvcHRpb25zIHlldC4KZGlmZiAtLWdpdCBhL2tleGVjL2FyY2gv
aHBwYS9rZXhlYy1lbGYtaHBwYS5jIGIva2V4ZWMvYXJjaC9ocHBhL2tleGVjLWVsZi1ocHBhLmMK
aW5kZXggZDNlZjBlOS4uNDc0YTkxOSAxMDA2NDQKLS0tIGEva2V4ZWMvYXJjaC9ocHBhL2tleGVj
LWVsZi1ocHBhLmMKKysrIGIva2V4ZWMvYXJjaC9ocHBhL2tleGVjLWVsZi1ocHBhLmMKQEAgLTc2
LDcgKzc2LDcgQEAgaW50IGVsZl9ocHBhX2xvYWQoaW50IGFyZ2MsIGNoYXIgKiphcmd2LCBjb25z
dCBjaGFyICpidWYsIG9mZl90IGxlbiwKIAkJeyAwLCAgICAgICAgICAgICAgICAgICAgMCwgTlVM
TCwgMCB9LAogCX07CiAKLQlzdGF0aWMgY29uc3QgY2hhciBzaG9ydF9vcHRpb25zW10gPSBLRVhF
Q19BTExfT1BUX1NUUiAiZCI7CisJc3RhdGljIGNvbnN0IGNoYXIgc2hvcnRfb3B0aW9uc1tdID0g
S0VYRUNfQUxMX09QVF9TVFI7CiAKIAl3aGlsZSAoKG9wdCA9IGdldG9wdF9sb25nKGFyZ2MsIGFy
Z3YsIHNob3J0X29wdGlvbnMsIG9wdGlvbnMsIDApKSAhPQogCQktMSkgewotLSAKMi4yNS4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFp
bGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
