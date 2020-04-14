Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25871A76AC
	for <lists+kexec@lfdr.de>; Tue, 14 Apr 2020 10:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=SmfYyaB6TTaBIWQbgWjJBL9bTZyFsS7Zup4PE0BMWsI=; b=aKNcnPs7EILokz
	okbXsll+dv/hqf/U4a4FkYb7zzOhyYP3OdtVMqP2JilyQqO/O4GfBIE7AYqc4d8Zbhka1U5f3sSNd
	a8ifM7MoSB2LMGVxTWh0aT+gDaEo2J9UW6r4iz3x7tNqLw2Oi/zt24q87Td4VRDbPYYNz6d2aqpQj
	3zZAHAER2QlbF95dY6TK4vtkpGWmrIEF0ObTY3KvgDw8D7ovplvcagOI0+nn2vN7dA1AwguIu2jm6
	HBC/8l0CA2tdXn+BrXnb5jHTlrKoZ++St/Dp+Iof3d4b/TWKzNEwabKV2uE4cbv7L8X24Nrjgp5wb
	RWSrr9gDXv4kGLU7bkvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHKj-0006N1-RC; Tue, 14 Apr 2020 08:54:17 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHKg-0006MU-IO
 for kexec@lists.infradead.org; Tue, 14 Apr 2020 08:54:16 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200414085411euoutp024fb16012e86ecb6608e60235f126d346~Fo7doy5nB0931509315euoutp02O
 for <kexec@lists.infradead.org>; Tue, 14 Apr 2020 08:54:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200414085411euoutp024fb16012e86ecb6608e60235f126d346~Fo7doy5nB0931509315euoutp02O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586854451;
 bh=AuioLS0KsnPK36blX+W921C2bbUKndvkaBfotrmbi4s=;
 h=From:To:Cc:Subject:Date:References:From;
 b=gSPv10EWiuTRT7HXiEtvvICYztFPW81fnaLNNAYPlO/1msqweq/FbEyL823/I11hD
 fi+M7LSFlO2Y76+GMruNEzh7u8ra97wzv5DOaCa1V6IVEY3wHgN6NhTwHZ9zVPjxYo
 m80MWx88CUghvdFyEl6SdfGVbgOJY/aVBoskLo5c=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200414085411eucas1p2581bff919e2c21acbcc24aebb66344e3~Fo7dbP13A2994629946eucas1p2U;
 Tue, 14 Apr 2020 08:54:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 20.9A.60698.33A759E5; Tue, 14
 Apr 2020 09:54:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200414085411eucas1p240d872905d55681ab4a3d9bb9f584563~Fo7dEDtj72556525565eucas1p2D;
 Tue, 14 Apr 2020 08:54:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200414085411eusmtrp2436412124ca0a156ed75cc1d5eca2666~Fo7dDXnnd3107131071eusmtrp2g;
 Tue, 14 Apr 2020 08:54:11 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-d6-5e957a333e97
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 89.BD.07950.33A759E5; Tue, 14
 Apr 2020 09:54:11 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200414085411eusmtip1794984586e5ee356a9f4872a3d6e3a5b~Fo7c3SZiA3133131331eusmtip1C;
 Tue, 14 Apr 2020 08:54:10 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: horms@verge.net.au, kexec@lists.infradead.org
Subject: [PATCH] arm: redefine OPT_APPEND and OPT_RAMDISK
Date: Tue, 14 Apr 2020 10:52:24 +0200
Message-Id: <20200414085224.7069-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42LZduznOV3jqqlxBlMXK1o0b/3KaLH79Fcm
 i5uHVjA6MHtsXlLv0bdlFaPHnJ/fWAKYo7hsUlJzMstSi/TtErgyLl5exFTwjr3iy6YjrA2M
 99i6GDk5JARMJI42rACyuTiEBFYwSvQuamaBcL4wSkz+tRvK+cwosb/rBSNMy+d1Z5ghEssZ
 JV7fWMsO4TxnlPjd8xisik3AUaJ/6QlWEFtEwFBi+5GrYDazgL3ExFn/wZYLC1hKfFoOUc8i
 oCqx8/sRJhCbV8BK4sLjNlaIbfISsxtPs0HEBSVOznzCAmLzC2hJrGm6zgIxU16ieetssIsk
 BN6zSRzs3sIC0ewicbD3O5QtLPHq+BZ2CFtG4v/O+UDLOIDseonJk8wgensYJbbN+QFVby1x
 59wvNpAaZgFNifW79CHCjhLHzyxnhmjlk7jxVhDiBD6JSdumQ4V5JTrahCCqVSTW9e+BGigl
 0ftqBTQMPSTmXPzHMoFRcRaSx2YheWYWwt4FjMyrGMVTS4tz01OLjfNSy/WKE3OLS/PS9ZLz
 czcxAtPF6X/Hv+5g3Pcn6RCjAAejEg/vBP8pcUKsiWXFlbmHGCU4mJVEeNfnTo0T4k1JrKxK
 LcqPLyrNSS0+xCjNwaIkzmu86GWskEB6YklqdmpqQWoRTJaJg1OqgdFHy6D3eq99SOPkLuMw
 zg0bonsTbswIKqmZ2st0qXjWxmDJr2uu58nxq4kkPpTYZZD78pvipnLhoFZPf+1TR9+fVk/8
 ZiU4f8b1437fL09ceNTTJSgjc501f2Oa2pSoXY4P+RItrn5bE5NtVsM68UjR/AXneh7WTzV4
 U3Zha8aSSP5HZXzSnkosxRmJhlrMRcWJAMuOX+ETAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBLMWRmVeSWpSXmKPExsVy+t/xu7rGVVPjDJb/4rBo3vqV0WL36a9M
 FjcPrWB0YPbYvKTeo2/LKkaPOT+/sQQwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hka
 m8daGZkq6dvZpKTmZJalFunbJehlXLy8iKngHXvFl01HWBsY77F1MXJySAiYSHxed4a5i5GL
 Q0hgKaNE760JjF2MHEAJKYmVc9MhaoQl/lzrYoOoecoocfDJA2aQBJuAo0T/0hOsILaIgLHE
 5rYFYDazgL3ExFn/wRYIC1hKfFr+mBHEZhFQldj5/QgTiM0rYCVx4XEbK8QCeYnZjafZIOKC
 EidnPmEBuYFZQF1i/TwhkDC/gJbEmqbrLBDj5SWat85mnsAoMAtJxyyEjllIqhYwMq9iFEkt
 Lc5Nzy020itOzC0uzUvXS87P3cQIDPVtx35u2cHY9S74EKMAB6MSD+8E/ylxQqyJZcWVuYcY
 JTiYlUR41+dOjRPiTUmsrEotyo8vKs1JLT7EaAr0zkRmKdHkfGAc5pXEG5oamltYGpobmxub
 WSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYGTZlZeQ8ruM4WP990VHylz/1uuV77zTtdJn
 ouCHD3xOj4/uOaj6S+3RudUvGJyu+Vm4v2j3Y2htt1lYWDDH/pzmsQIjxX23XWaH/rSaPfXM
 3TKHE/vixDvV3y3TCSu9ddT9NOPF99uW2TsuZQ9OXrhd8VXMXoUTWeq3K73ys3+uUVlvw/p8
 hYoSS3FGoqEWc1FxIgAdjkwEiwIAAA==
X-CMS-MailID: 20200414085411eucas1p240d872905d55681ab4a3d9bb9f584563
X-Msg-Generator: CA
X-RootMTR: 20200414085411eucas1p240d872905d55681ab4a3d9bb9f584563
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200414085411eucas1p240d872905d55681ab4a3d9bb9f584563
References: <CGME20200414085411eucas1p240d872905d55681ab4a3d9bb9f584563@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_015414_810642_EA525A37 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
IGZ1dHVyZQoKU2lnbmVkLW9mZi1ieTogxYF1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1z
dW5nLmNvbT4KLS0tCiBrZXhlYy9hcmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oIHwgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2tleGVjL2FyY2gvYXJtL2luY2x1ZGUvYXJjaC9vcHRpb25zLmggYi9rZXhlYy9h
cmNoL2FybS9pbmNsdWRlL2FyY2gvb3B0aW9ucy5oCmluZGV4IGFiYmYzNDkuLjkyNzIzNzggMTAw
NjQ0Ci0tLSBhL2tleGVjL2FyY2gvYXJtL2luY2x1ZGUvYXJjaC9vcHRpb25zLmgKKysrIGIva2V4
ZWMvYXJjaC9hcm0vaW5jbHVkZS9hcmNoL29wdGlvbnMuaApAQCAtNCwxMiArNCwxMiBAQAogI2Rl
ZmluZSBPUFRfRFRfTk9fT0xEX1JPT1QJKE9QVF9NQVgrMCkKICNkZWZpbmUgT1BUX0FSQ0hfTUFY
CQkoT1BUX01BWCsxKQogCi0jZGVmaW5lIE9QVF9BUFBFTkQJJ2EnCi0jZGVmaW5lIE9QVF9SQU1E
SVNLCSdyJwogI2RlZmluZSBPUFRfRFRCCQkoT1BUX0FSQ0hfTUFYKzApCiAjZGVmaW5lIE9QVF9B
VEFHUwkoT1BUX0FSQ0hfTUFYKzEpCiAjZGVmaW5lIE9QVF9JTUFHRV9TSVpFCShPUFRfQVJDSF9N
QVgrMikKICNkZWZpbmUgT1BUX1BBR0VfT0ZGU0VUCShPUFRfQVJDSF9NQVgrMykKKyNkZWZpbmUg
T1BUX0FQUEVORAkoT1BUX0FSQ0hfTUFYKzQpCisjZGVmaW5lIE9QVF9SQU1ESVNLCShPUFRfQVJD
SF9NQVgrNSkKIAogLyogT3B0aW9ucyByZWxldmFudCB0byB0aGUgYXJjaGl0ZWN0dXJlIChleGNs
dWRpbmcgbG9hZGVyLXNwZWNpZmljIG9uZXMpLAogICogaW4gdGhpcyBjYXNlIG5vbmU6Ci0tIAoy
LjI1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpr
ZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
