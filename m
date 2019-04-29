Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D83DDA4
	for <lists+kexec@lfdr.de>; Mon, 29 Apr 2019 10:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0ouoFSIKkuJEsdfcX83LrVpDoSmsLyt7ix/wIfhIUE=; b=HyY+sVHeF20+Qn
	wOViEZKgbVriqEQ3EpPs3z/7bHXRftKI3235jzHcYYzhxPI2RMtDC4wJKixHDXflIsMB1DftRktD8
	t1pktt0thy7CpNjadLVfrx6NapD1yk/PjXusMI7mStZU3fkI+3z1gH31/pFHwzRalueg1Xf5diEcN
	1uTyx97NXcPBd/s2dqUA/K3R4Ltwbc0Bxl20ZHhGFGk/mM7WdnLfAkeW/LFLONvzRLEJg2IXAcSJo
	Cccr9H4lQq2tGroAIZuVslYo4gEa5i0bJhrT4DlDVxvnX8Zk2ZzkLabvyd4tRPyr3zdoVjI3N5/gu
	nWYfk3I3v0bb2fCEkvqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1YZ-00030X-9g; Mon, 29 Apr 2019 08:22:35 +0000
Received: from mail.grenz-bonn.de ([2001:41d0:1:c648::ffe1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1YR-0002qG-Ry
 for kexec@lists.infradead.org; Mon, 29 Apr 2019 08:22:32 +0000
Received: from [192.168.178.110] (p4FF5D39A.dip0.t-ipconnect.de
 [79.245.211.154])
 by ks357529.kimsufi.com (Postfix) with ESMTPSA id 8112A8A0F3;
 Mon, 29 Apr 2019 10:22:26 +0200 (CEST)
Subject: [PATCH 1/2] x86: Check /proc/mounts before mtab for mounts
To: kexec@lists.infradead.org
References: <93048bda-26a4-8573-6614-8b98ccb44591@nh2.me>
From: =?UTF-8?Q?Niklas_Hamb=c3=bcchen?= <mail@nh2.me>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@nh2.me; prefer-encrypt=mutual; keydata=
 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
Message-ID: <548273c1-37e7-7278-39f4-f67e49cdd0d6@nh2.me>
Date: Mon, 29 Apr 2019 10:22:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <93048bda-26a4-8573-6614-8b98ccb44591@nh2.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_012228_665848_1333A369 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: horms@verge.net.au
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SW4gbWFueSBzaXR1YXRpb25zLCBlc3BlY2lhbGx5IG9uIHJlYWQtb25seSBmaWxlIHN5c3RlbXMK
YW5kIGluaXRpYWwgcmFtZGlza3MgKGludHJhbWZzL2luaXRyZCksIC9ldGMvbXRhYiBkb2VzIG5v
dCBleGlzdC4KCkJlZm9yZSB0aGlzIGNvbW1pdCwga2V4ZWMgd291bGQgZmFpbCB0byByZWFkIG1v
dW50cyBvbiBzdWNoIHN5c3RlbXMKaW4gYGZpbmRfbW50X2J5X2ZzbmFtZSgpYCwgc3VjaCB0aGF0
IGBnZXRfYm9vdHBhcmFtKClgIHdvdWxkIG5vdApgYm9vdF9wYXJhbXMvZGF0YWAsIHdoaWNoIHdv
dWxkIHRoZW4gbGVhZCB0byBlLmcuIGBzZXR1cF9lZmlfZGF0YSgpYApub3QgYmVpbmcgY2FsbGVk
IGluIGBzZXR1cF9lZmlfaW5mbygpYC4KCkFzIGEgcmVzdWx0LCBrZXhlYydlZCBrZXJuZWxzIHdv
dWxkIG5vdCBvYnRhaW4gRUZJIGRhdGEsCnN1YnNlcXVlbnRpYWxseSBsYWNrIGFuIGBBQ1BJIFJT
RFBgIGVudHJ5LCBlbWl0dGluZzoKCiAgICBBQ1BJIEJJT1MgRXJyb3IgKGJ1Zyk6IEEgdmFsaWQg
UlNEUCB3YXMgbm90IGZvdW5kICgyMDE4MDgxMC90Ynhmcm9vdC0yMTApCgphbmQgdGh1cyBmYWls
IHRvIHR1cm4gb2ZmIHRoZSBtYWNoaW5lIG9uIHBvd2Vyb2ZmLCBpbnN0ZWFkIHByaW50aW5nIG9u
bHk6CgoJCXJlYm9vdDogU3lzdGVtIGhhbHRlZAoKVGhpcyBwcm9ibGVtIGhhZCB0byBiZSB3b3Jr
ZWQgYXJvdW5kIGJ5IHBhc3NpbmcgYGFjcGlfcnNkcD1gIG1hbnVhbGx5CmJlZm9yZS4gVGhpcyBj
b21taXQgb2J2aWF0ZXMgdGhpcyB3b3JrYXJvdW5kLgoKU2VlIGFsc286CgoqIGh0dHBzOi8vZ2l0
aHViLmNvbS9jb3Jlb3MvYnVncy9pc3N1ZXMvMTY3I2lzc3VlY29tbWVudC00ODczMjA4NzkKKiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwva2V4ZWMvMjAxMi1PY3RvYmVyLzAw
NjkyNC5odG1sCgpTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgSGFtYsO8Y2hlbiA8bWFpbEBuaDIubWU+
Ci0tLQoga2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jIHwgOCArKysrKystLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMgYi9rZXhlYy9hcmNoL2kzODYveDg2
LWxpbnV4LXNldHVwLmMKaW5kZXggOGZhZDExNS4uNzRmYjBjNCAxMDA2NDQKLS0tIGEva2V4ZWMv
YXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCisrKyBiL2tleGVjL2FyY2gvaTM4Ni94ODYtbGlu
dXgtc2V0dXAuYwpAQCAtNDMyLDcgKzQzMiw3IEBAIG91dDoKIC8qCiAgKiBUaGlzIHJlYWxseSBv
bmx5IG1ha2VzIHNlbnNlIGZvciB2aXJ0dWFsIGZpbGVzeXN0ZW1zIHRoYXQgYXJlIG9ubHkgZXhw
ZWN0ZWQKICAqIHRvIGJlIG1vdW50ZWQgb25jZSAoc3lzZnMsIGRlYnVnc2ZzLCBwcm9jKSwgYXMg
aXQgd2lsbCByZXR1cm4gdGhlIGZpcnN0Ci0gKiBpbnN0YW5jZSBsaXN0ZWQgaW4gbXRhYi4KKyAq
IGluc3RhbmNlIGxpc3RlZCBpbiAvcHJvYy9tb3VudHMsIGZhbGxpbmcgYmFjayB0byBtdGFiIGlm
IGFic2VudC4KICAqLwogY2hhciAqZmluZF9tbnRfYnlfZnNuYW1lKGNoYXIgKmZzbmFtZSkKIHsK
QEAgLTQ0MCw3ICs0NDAsMTEgQEAgY2hhciAqZmluZF9tbnRfYnlfZnNuYW1lKGNoYXIgKmZzbmFt
ZSkKIAlzdHJ1Y3QgbW50ZW50ICptbnQ7CiAJY2hhciAqbW50ZGlyOwogCi0JbXRhYiA9IHNldG1u
dGVudCgiL2V0Yy9tdGFiIiwgInIiKTsKKwltdGFiID0gc2V0bW50ZW50KCIvcHJvYy9tb3VudHMi
LCAiciIpOworCWlmICghbXRhYikgeworCQkvLyBGYWxsIGJhY2sgdG8gbXRhYgorCQltdGFiID0g
c2V0bW50ZW50KCIvZXRjL210YWIiLCAiciIpOworCX0KIAlpZiAoIW10YWIpCiAJCXJldHVybiBO
VUxMOwogCWZvcihtbnQgPSBnZXRtbnRlbnQobXRhYik7IG1udDsgbW50ID0gZ2V0bW50ZW50KG10
YWIpKSB7Ci0tIAoyLjE5LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
