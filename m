Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3048500E6
	for <lists+kexec@lfdr.de>; Mon, 24 Jun 2019 07:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IdNYD2M+lcCTMSmjOBfCb7ZybT/G9+ZBuQ8QpSyOQow=; b=Nnik7ZQ2L5T3WH
	y8k6zRrHjvua0YgSbRL7TvfJvp65rkPaEz4VGYkaUdfDOC1oLh4z48t0vk2IY8ZckwRiPmX/o1Yrp
	42bABcdTSMdgOS2hnsXvKcbXFZBQoOIATE64ZYM3AfWOVfJzGWQB290ytsfpiLIkjWemSu0jYh2UV
	q9PKq1tfLLMc3NL4lRzbsBVOgqumpf7tuo92e8ivS7IxTcupZiGgNMp+PvQNAaamKYBVcmC+CKac3
	b9PKMR9pWmvusu/6o7q+XfRcGfVwXWCUADQ0TZAnsswiXc+CVOp7eN74WmnUpBTjvph18E3QIHbVN
	mKmfZvTL6VCSpekv1XPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHIH-0005LQ-AB; Mon, 24 Jun 2019 05:13:29 +0000
Received: from m15-33.126.com ([220.181.15.33])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHIC-0005L4-6Y
 for kexec@lists.infradead.org; Mon, 24 Jun 2019 05:13:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=fr3xf
 Wx23bz/Eqtr0uwAkowQvRgf1dRaxLibGwj+Yck=; b=C4Tw//dI66ALwU9ocLJ6P
 ImFz151v7k3ARwzL+gyhefbbWqI/hrAkkuc1NvC+L5PvcfSDBsTE0fGfv3Xu4zE4
 vdK4nfuzIJitCuY1R+NSPNVjNc3Iyi0b+d1o7Og078af1DY3lRAjrjYj7AHkfaC2
 EUVY1UCs+kGCo3Dbt5L9ak=
Received: from kernelpatch$126.com ( [222.90.31.26] ) by
 ajax-webmail-wmsvr33 (Coremail) ; Mon, 24 Jun 2019 12:41:18 +0800 (CST)
X-Originating-IP: [222.90.31.26]
Date: Mon, 24 Jun 2019 12:41:18 +0800 (CST)
From: "Tiezhu Yang" <kernelpatch@126.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com
Subject: [PATCH v2 RESEND] kexec: fix warnig of crash_zero_bytes in crash.c
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
 20190614(cb3344cf) Copyright (c) 2002-2019 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <117ef0c6.3d30.16b87c9cfbf.Coremail.kernelpatch@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: IcqowAAnb_pvVBBdLWNGAA--.27613W
X-CM-SenderInfo: xnhu0vxosd3ubk6rjloofrz/1tbi7w-d9VpD68ubhAAAsu
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_221324_543209_19C23314 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelpatch[at]126.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 vgoyal@redhat.com
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Rml4IHRoZSBmb2xsb3dpbmcgc3BhcnNlIHdhcm5pbmc6CgphcmNoL3g4Ni9rZXJuZWwvY3Jhc2gu
Yzo1OToxNToKd2FybmluZzogc3ltYm9sICdjcmFzaF96ZXJvX2J5dGVzJyB3YXMgbm90IGRlY2xh
cmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwoKRmlyc3QsIG1ha2UgY3Jhc2hfemVyb19ieXRlcyBz
dGF0aWMuIEluIGFkZGl0aW9uLCBjcmFzaF96ZXJvX2J5dGVzCmlzIHVzZWQgd2hlbiBDT05GSUdf
S0VYRUNfRklMRSBpcyBzZXQsIHNvIG1ha2UgaXQgb25seSBhdmFpbGFibGUKdW5kZXIgQ09ORklH
X0tFWEVDX0ZJTEUuIE90aGVyd2lzZSwgaWYgQ09ORklHX0tFWEVDX0ZJTEUgaXMgbm90IHNldCwK
dGhlIGZvbGxvd2luZyB3YXJuaW5nIHdpbGwgYXBwZWFyIHdoZW4gbWFrZSBjcmFzaF96ZXJvX2J5
dGVzIHN0YXRpYzoKCmFyY2gveDg2L2tlcm5lbC9jcmFzaC5jOjU5OjIyOgp3YXJuaW5nOiChrmNy
YXNoX3plcm9fYnl0ZXOhryBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtdmFyaWFibGVd
CgpGaXhlczogZGQ1ZjcyNjA3NmNjICgia2V4ZWM6IHN1cHBvcnQgZm9yIGtleGVjIG9uIHBhbmlj
IHVzaW5nIG5ldyBzeXN0ZW0gY2FsbCIpClNpZ25lZC1vZmYtYnk6IFRpZXpodSBZYW5nIDxrZXJu
ZWxwYXRjaEAxMjYuY29tPgpBY2tlZC1ieTogRGF2ZSBZb3VuZyA8ZHlvdW5nQHJlZGhhdC5jb20+
CkNjOiBWaXZlayBHb3lhbCA8dmdveWFsQHJlZGhhdC5jb20+CkNjOiBrZXhlY0BsaXN0cy5pbmZy
YWRlYWQub3JnCi0tLQogYXJjaC94ODYva2VybmVsL2NyYXNoLmMgfCA0ICsrKy0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNo
L3g4Ni9rZXJuZWwvY3Jhc2guYyBiL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCmluZGV4IDU3NmIy
ZTEuLmYxMzQ4MGUgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCisrKyBiL2Fy
Y2gveDg2L2tlcm5lbC9jcmFzaC5jCkBAIC01Niw3ICs1Niw5IEBAIHN0cnVjdCBjcmFzaF9tZW1t
YXBfZGF0YSB7CiAgKi8KIGNyYXNoX3ZtY2xlYXJfZm4gX19yY3UgKmNyYXNoX3ZtY2xlYXJfbG9h
ZGVkX3ZtY3NzID0gTlVMTDsKIEVYUE9SVF9TWU1CT0xfR1BMKGNyYXNoX3ZtY2xlYXJfbG9hZGVk
X3ZtY3NzKTsKLXVuc2lnbmVkIGxvbmcgY3Jhc2hfemVyb19ieXRlczsKKyNpZmRlZiBDT05GSUdf
S0VYRUNfRklMRQorc3RhdGljIHVuc2lnbmVkIGxvbmcgY3Jhc2hfemVyb19ieXRlczsKKyNlbmRp
ZgogCiBzdGF0aWMgaW5saW5lIHZvaWQgY3B1X2NyYXNoX3ZtY2xlYXJfbG9hZGVkX3ZtY3NzKHZv
aWQpCiB7Ci0tIAoxLjguMy4xCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
