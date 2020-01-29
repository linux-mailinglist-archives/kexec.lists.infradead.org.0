Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1B214CEE0
	for <lists+kexec@lfdr.de>; Wed, 29 Jan 2020 18:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqS7V4vfoyHuDHUk1vsoNHgc3kEUdGk93q8W4Y7urXU=; b=Y0u9Aw1oT+qFO1
	HE2GLIYkgy+FdWIVgTC2wrDdr6NJMplZOgpIJ7WyRdbCyjWdNj6pljix+hRxtmwshNsv/HUYuWUzK
	AXXIxfvjnUZ/bNh3GL7gp+kjLlNeMFJl6jyVdcbeuWE3FZZZscgdk2FopvD7AceRaA8f2nKBtDJxQ
	1y0z7cptLVHXd/uuY27TqEO9coh2RNb6KnYiTR6VbdRPuyo/bB4wl/Z4Ks6Tf0I9utXVZjz6oirdq
	BMRkIU2/p3HnhuEuKTTOQjVcAXwszIpXF7wcuSP8ZUaxoY3Wp3fPfQ55dMZLrjeXanFkOeoYtVxXQ
	nRvfdBULSsuAwEuFygUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwqh3-0005LA-6M; Wed, 29 Jan 2020 16:59:57 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqgy-0005J2-QK
 for kexec@lists.infradead.org; Wed, 29 Jan 2020 16:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580317186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7qb0WYzey6hgUzzFIxY2ub2h+hNMnjNXLhHP6tvlIcE=;
 b=DQ41Spy4kjLTy6Z9NR78oisRWXuL28ZvHzj8d9noWIJJo+cplLU8d7T1sgZbU/nlpvc/Bc
 bZ3qXPtrWTf+iQSbIR6ulcAbq+wjpMCNfFu1SJwqmwuKYwTCwbYzl0paRS2ImQqx/G9y3J
 T411Lh0WoPBJtqZWVfzIqksJMqDTUiE=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-66-qOMShimTMaOpfUBNLsWmhQ-1; Wed, 29 Jan 2020 11:59:42 -0500
Received: by mail-io1-f69.google.com with SMTP id t17so28415ioi.11
 for <kexec@lists.infradead.org>; Wed, 29 Jan 2020 08:59:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7qb0WYzey6hgUzzFIxY2ub2h+hNMnjNXLhHP6tvlIcE=;
 b=p00WrvciUmJP/T2JRtIHRPI1X4q/QnttNrqYj0ln9FkSBdt1LK4FdwiS56sA0r/h/8
 r9fWIZtQJ3RYEpmD1xXhSM1tBFUmkHzMpI2F1gH6fd2ve7BH2qJPBHDX+Gxkv4vxdJcn
 BXq949dGzOY4UaoutQEzFN66Lwb8mlvPZFzV1EuEAX0/VhxrNYLycbneHf71ITTxhKqB
 MfvSX8ZiaDw2zNW+d91Wfu2lO600kNoPlpr7UUlTaqpuPVLbSDng/LUL/MWDcRX3gc9x
 MPvlq4J2X+dqZ9dO64/Xfc3s/jDrA1E/ygdEuyDDzu2GUHMjbwhlLvC3rWY8iwnC2iq7
 0lTQ==
X-Gm-Message-State: APjAAAUMfnvOY6dBnuhPTXrW8gW2YED2o/hkiAqyy5fu0lyrkCi7DziN
 HvBQkzvtnOGV0o3Ji0Me04EJ+PD0v9Xfdg5pDRXuXrHYzCnsz9aBiAsmKfuVc95oNT4kdIZmcu8
 D7zDwdUsfyPn2g/dnlZknL8Bc4lWEqOEcwtFs
X-Received: by 2002:a02:708f:: with SMTP id f137mr93798jac.4.1580317181635;
 Wed, 29 Jan 2020 08:59:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/efT2ry/IiwY2WLawIGbvx0qa9udJEQwBLJelbjtfywrzE9UI0Yx+hrplxLemi7UFGy2tKcIzCdzInNiYzDk=
X-Received: by 2002:a02:708f:: with SMTP id f137mr93768jac.4.1580317181248;
 Wed, 29 Jan 2020 08:59:41 -0800 (PST)
MIME-Version: 1.0
References: <20200129053713.622072-1-kasong@redhat.com>
 <TY2PR01MB5210BABA5B9D2F0ED7CD5ACADD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
In-Reply-To: <TY2PR01MB5210BABA5B9D2F0ED7CD5ACADD050@TY2PR01MB5210.jpnprd01.prod.outlook.com>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 30 Jan 2020 00:59:30 +0800
Message-ID: <CACPcB9eCAYr223C=A9j9MY2-v--rxgJ8CKJgNz0nVBC9U48MGA@mail.gmail.com>
Subject: Re: [PATCH] makedumpfile: Remove duplicated variable declarations
To: =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+IOS4gOS7gSk=?= <k-hagio-ab@nec.com>
X-MC-Unique: qOMShimTMaOpfUBNLsWmhQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_085952_929950_5AB80704 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMTI6MjggQU0gSEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA
5LiA5LuBKQo8ay1oYWdpby1hYkBuZWMuY29tPiB3cm90ZToKPgo+IEhpIEthaXJ1aSwKPgo+IFRo
YW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
ID4gV2hlbiBidWlsZGluZyBvbiBGZWRvcmEgMzIsIGZvbGxvd2luZyBlcnJvciBpcyBvYnNlcnZl
ZDoKPiA+Cj4gPiAvdXNyL2Jpbi9sZDoKPiA+IGVyYXNlX2luZm8ubzovYnVpbGRkaXIvYnVpbGQv
QlVJTEQva2V4ZWMtdG9vbHMtMi4wLjIwL21ha2VkdW1wZmlsZS0xLjYuNy9tYWtlZHVtcGZpbGUu
aDoyMDEwOgo+ID4gbXVsdGlwbGUgZGVmaW5pdGlvbiBvZiBgY3Jhc2hfcmVzZXJ2ZWRfbWVtX25y
JzsKPiA+IGVsZl9pbmZvLm86L2J1aWxkZGlyL2J1aWxkL0JVSUxEL2tleGVjLXRvb2xzLTIuMC4y
MC9tYWtlZHVtcGZpbGUtMS42LjcvbWFrZWR1bXBmaWxlLmg6MjAxMDogZmlyc3QKPiA+IGRlZmlu
ZWQgaGVyZQo+ID4gL3Vzci9iaW4vbGQ6Cj4gPiBlcmFzZV9pbmZvLm86L2J1aWxkZGlyL2J1aWxk
L0JVSUxEL2tleGVjLXRvb2xzLTIuMC4yMC9tYWtlZHVtcGZpbGUtMS42LjcvbWFrZWR1bXBmaWxl
Lmg6MjAwOToKPiA+IG11bHRpcGxlIGRlZmluaXRpb24gb2YgYGNyYXNoX3Jlc2VydmVkX21lbSc7
Cj4gPiBlbGZfaW5mby5vOi9idWlsZGRpci9idWlsZC9CVUlMRC9rZXhlYy10b29scy0yLjAuMjAv
bWFrZWR1bXBmaWxlLTEuNi43L21ha2VkdW1wZmlsZS5oOjIwMDk6IGZpcnN0Cj4gPiBkZWZpbmVk
IGhlcmUKPiA+IC91c3IvYmluL2xkOgo+ID4gZXJhc2VfaW5mby5vOi9idWlsZGRpci9idWlsZC9C
VUlMRC9rZXhlYy10b29scy0yLjAuMjAvbWFrZWR1bXBmaWxlLTEuNi43L21ha2VkdW1wZmlsZS5o
OjEyNzg6Cj4gPiBtdWx0aXBsZSBkZWZpbml0aW9uIG9mIGBwYXJhbGxlbF9pbmZvX3QnOwo+ID4g
ZWxmX2luZm8ubzovYnVpbGRkaXIvYnVpbGQvQlVJTEQva2V4ZWMtdG9vbHMtMi4wLjIwL21ha2Vk
dW1wZmlsZS0xLjYuNy9tYWtlZHVtcGZpbGUuaDoxMjc4OiBmaXJzdAo+ID4gZGVmaW5lZCBoZXJl
Cj4gPiAvdXNyL2Jpbi9sZDoKPiA+IGVyYXNlX2luZm8ubzovYnVpbGRkaXIvYnVpbGQvQlVJTEQv
a2V4ZWMtdG9vbHMtMi4wLjIwL21ha2VkdW1wZmlsZS0xLjYuNy9tYWtlZHVtcGZpbGUuaDoxMjY1
Ogo+ID4gbXVsdGlwbGUgZGVmaW5pdGlvbiBvZiBgc3BsaXR0aW5nX2luZm9fdCc7Cj4gPiBlbGZf
aW5mby5vOi9idWlsZGRpci9idWlsZC9CVUlMRC9rZXhlYy10b29scy0yLjAuMjAvbWFrZWR1bXBm
aWxlLTEuNi43L21ha2VkdW1wZmlsZS5oOjEyNjU6IGZpcnN0Cj4gPiBkZWZpbmVkIGhlcmUKPiA+
Cj4gPiBBbmQgYXBwYXJlbnRseSwgdGhlc2UgdmFyaWFibGVzIGFyZSB3cm9uZ2x5IGRlY2xhcmVk
IG11bHRpcGxlIHRpbWVzLiBTbwo+ID4gcmVtb3ZlIGR1cGxpY2F0ZWQgZGVjbGFyYXRpb24uCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogS2FpcnVpIFNvbmcgPGthc29uZ0ByZWRoYXQuY29tPgo+ID4g
LS0tCj4gPiAgbWFrZWR1bXBmaWxlLmMgfCAgMiArKwo+ID4gIG1ha2VkdW1wZmlsZS5oIHwgMTAg
KysrKysrLS0tLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9tYWtlZHVtcGZpbGUuYyBiL21ha2VkdW1wZmls
ZS5jCj4gPiBpbmRleCBlMjkwZmJkLi45YWFkNzdiIDEwMDY0NAo+ID4gLS0tIGEvbWFrZWR1bXBm
aWxlLmMKPiA+ICsrKyBiL21ha2VkdW1wZmlsZS5jCj4gPiBAQCAtMzQsNiArMzQsOCBAQCBzdHJ1
Y3QgYXJyYXlfdGFibGUgIGFycmF5X3RhYmxlOwo+ID4gIHN0cnVjdCBudW1iZXJfdGFibGUgIG51
bWJlcl90YWJsZTsKPiA+ICBzdHJ1Y3Qgc3JjZmlsZV90YWJsZSBzcmNmaWxlX3RhYmxlOwo+ID4g
IHN0cnVjdCBzYXZlX2NvbnRyb2wgIHNjOwo+ID4gK3N0cnVjdCBwYXJhbGxlbF9pbmZvIHBhcmFs
bGVsX2luZm9fdDsKPiA+ICtzdHJ1Y3Qgc3BsaXR0aW5nX2luZm8gICAgICAgIHNwbGl0dGluZ19p
bmZvX3Q7Cj4gPgo+ID4gIHN0cnVjdCB2bV90YWJsZSAgICAgICAgICAgICAgdnQgPSB7IDAgfTsK
PiA+ICBzdHJ1Y3QgRHVtcEluZm8gICAgICAgICAgICAgICppbmZvID0gTlVMTDsKPiA+IGRpZmYg
LS1naXQgYS9tYWtlZHVtcGZpbGUuaCBiL21ha2VkdW1wZmlsZS5oCj4gPiBpbmRleCA2OGQ5Njkx
Li42MTQ3NjRjIDEwMDY0NAo+ID4gLS0tIGEvbWFrZWR1bXBmaWxlLmgKPiA+ICsrKyBiL21ha2Vk
dW1wZmlsZS5oCj4gPiBAQCAtMTI2Miw3ICsxMjYyLDggQEAgc3RydWN0IHNwbGl0dGluZ19pbmZv
IHsKPiA+ICAgICAgIG1kZl9wZm5fdCAgICAgICAgICAgICAgIGVuZF9wZm47Cj4gPiAgICAgICBv
ZmZfdCAgICAgICAgICAgICAgICAgICBvZmZzZXRfZXJhc2VpbmZvOwo+ID4gICAgICAgdW5zaWdu
ZWQgbG9uZyAgICAgICAgICAgc2l6ZV9lcmFzZWluZm87Cj4gPiAtfSBzcGxpdHRpbmdfaW5mb190
Owo+ID4gK307Cj4gPiArZXh0ZXJuIHN0cnVjdCBzcGxpdHRpbmdfaW5mbyBzcGxpdHRpbmdfaW5m
b190Owo+Cj4gSW50ZXJlc3RpbmdseSwgaXQgc2VlbXMgdGhhdCB0aGUgc3BsaXR0aW5nX2luZm9f
dCBhbmQgcGFyYWxsZWxfaW5mb190IHNob3VsZAo+IGhhdmUgYmVlbiB0eXBlZGVmJ2QgYmVjYXVz
ZSBvZiB0aGVpciBuYW1lcyBlbmRpbmcgd2l0aCBfdCBhbmQgbm90IGJlaW5nIHVzZWQKPiBhcyB2
YXJpYWJsZS4gIChXZSB1c2UgaW5mby0+c3BsaXR0aW5nX2luZm8gYW5kIGluZm8tPnBhcmFsbGVs
X2luZm8uKQo+Cj4gU28sIGlzIHRoZSBmb2xsb3dpbmcgcGF0Y2ggT0s/IHRoZW4gSSBjYW4gbW9k
aWZ5IHlvdXIgcGF0Y2guCj4KCkhpLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LCBhbmQgeWVzIGl0
J3MgZGVmaW5pdGVseSBPSyB0byBjaGFuZ2UgdGhlIHBhdGNoCmluIHRoaXMgd2F5LiBJIGp1c3Qg
dG9vayBhIGJyaWVmIGxvb2sgYXQgdGhlIGNvZGUsIGFuZCBtb2RpZmllZCBpdCBpbgp0aGUgd2F5
IHRoYXQgYWN0dWFsbHkgY2hhbmdlIG5vdGhpbmcuIEFuZCBhZnRlciBhIHNlY29uZCBsb29rLCBp
bmRlZWQKdGhleSBhcmUgbmV2ZXIgdXNlZCBhcyB2YXJpYWJsZSwgb25seSB1c2VkIGFzIHBhcmFt
ZXRlcnMgb2Ygc2l6ZW9mKCkuCgpTbyBhY3R1YWxseSBjYW4gd2UganVzdCBnZXQgcmlkIG9mIHRo
ZW0sIGFuZCB1c2Ugc2l6ZW9mKHN0cnVjdApwYXJhbGxlbF9pbmZvKSBhbmQgc2l6ZW9mKHN0cnVj
dCBzcGxpdHRpbmdfaW5mbykgaW5zdGVhZD8gSXQgbWF5IGJlCmV2ZW4gc2ltcGxlci4KCkknbSBP
SyB3aXRoIGVpdGhlciB3YXkuCgo+IC0tLSBhL21ha2VkdW1wZmlsZS5oCj4gKysrIGIvbWFrZWR1
bXBmaWxlLmgKPiBAQCAtMTI1NSw3ICsxMjU1LDcgQEAgc3RydWN0IG1ha2VkdW1wZmlsZV9kYXRh
X2hlYWRlciB7Cj4gICAgICAgICBpbnQ2NF90IGJ1Zl9zaXplOwo+ICB9Owo+Cj4gLXN0cnVjdCBz
cGxpdHRpbmdfaW5mbyB7Cj4gK3R5cGVkZWYgc3RydWN0IHNwbGl0dGluZ19pbmZvIHsKPiAgICAg
ICAgIGNoYXIgICAgICAgICAgICAgICAgICAgICpuYW1lX2R1bXBmaWxlOwo+ICAgICAgICAgaW50
ICAgICAgICAgICAgICAgICAgICAgZmRfYml0bWFwOwo+ICAgICAgICAgbWRmX3Bmbl90ICAgICAg
ICAgICAgICAgc3RhcnRfcGZuOwo+IEBAIC0xMjY0LDcgKzEyNjQsNyBAQCBzdHJ1Y3Qgc3BsaXR0
aW5nX2luZm8gewo+ICAgICAgICAgdW5zaWduZWQgbG9uZyAgICAgICAgICAgc2l6ZV9lcmFzZWlu
Zm87Cj4gIH0gc3BsaXR0aW5nX2luZm9fdDsKPgo+IC1zdHJ1Y3QgcGFyYWxsZWxfaW5mbyB7Cj4g
K3R5cGVkZWYgc3RydWN0IHBhcmFsbGVsX2luZm8gewo+ICAgICAgICAgaW50ICAgICAgICAgICAg
ICAgICAgICAgZmRfbWVtb3J5Owo+ICAgICAgICAgaW50ICAgICAgICAgICAgICAgICAgICAgZmRf
Yml0bWFwX21lbW9yeTsKPiAgICAgICAgIGludCAgICAgICAgICAgICAgICAgICAgIGZkX2JpdG1h
cDsKPiBAQCAtMjAwNiw4ICsyMDA2LDggQEAgc3RydWN0IG1lbW9yeV9yYW5nZSB7Cj4gIH07Cj4K
PiAgI2RlZmluZSBDUkFTSF9SRVNFUlZFRF9NRU1fTlIgICA4Cj4gLXN0cnVjdCBtZW1vcnlfcmFu
Z2UgY3Jhc2hfcmVzZXJ2ZWRfbWVtW0NSQVNIX1JFU0VSVkVEX01FTV9OUl07Cj4gLWludCBjcmFz
aF9yZXNlcnZlZF9tZW1fbnI7Cj4gK2V4dGVybiBzdHJ1Y3QgbWVtb3J5X3JhbmdlIGNyYXNoX3Jl
c2VydmVkX21lbVtDUkFTSF9SRVNFUlZFRF9NRU1fTlJdOwo+ICtleHRlcm4gaW50IGNyYXNoX3Jl
c2VydmVkX21lbV9ucjsKPgo+ICB1bnNpZ25lZCBsb25nIHJlYWRfdm1jb3JlaW5mb19zeW1ib2wo
Y2hhciAqc3RyX3N5bWJvbCk7Cj4gIGludCByZWFkbWVtKGludCB0eXBlX2FkZHIsIHVuc2lnbmVk
IGxvbmcgbG9uZyBhZGRyLCB2b2lkICpidWZwdHIsIHNpemVfdCBzaXplKTsKPgo+Cj4gVGhhbmtz
LAo+IEthenUKPgo+ID4KPiA+ICBzdHJ1Y3QgcGFyYWxsZWxfaW5mbyB7Cj4gPiAgICAgICBpbnQg
ICAgICAgICAgICAgICAgICAgICBmZF9tZW1vcnk7Cj4gPiBAQCAtMTI3NSw3ICsxMjc2LDggQEAg
c3RydWN0IHBhcmFsbGVsX2luZm8gewo+ID4gICNpZmRlZiBVU0VMWk8KPiA+ICAgICAgIGx6b19i
eXRlcCAgICAgICAgICAgICAgIHdya21lbTsKPiA+ICAjZW5kaWYKPiA+IC19IHBhcmFsbGVsX2lu
Zm9fdDsKPiA+ICt9Owo+ID4gK2V4dGVybiBzdHJ1Y3QgcGFyYWxsZWxfaW5mbyBwYXJhbGxlbF9p
bmZvX3Q7Cj4gPgo+ID4gIHN0cnVjdCBwcGM2NF92bWVtbWFwIHsKPiA+ICAgICAgIHVuc2lnbmVk
IGxvbmcgICAgICAgICAgIHBoeXM7Cj4gPiBAQCAtMjAwNiw4ICsyMDA4LDggQEAgc3RydWN0IG1l
bW9yeV9yYW5nZSB7Cj4gPiAgfTsKPiA+Cj4gPiAgI2RlZmluZSBDUkFTSF9SRVNFUlZFRF9NRU1f
TlIgICA4Cj4gPiAtc3RydWN0IG1lbW9yeV9yYW5nZSBjcmFzaF9yZXNlcnZlZF9tZW1bQ1JBU0hf
UkVTRVJWRURfTUVNX05SXTsKPiA+IC1pbnQgY3Jhc2hfcmVzZXJ2ZWRfbWVtX25yOwo+ID4gK2V4
dGVybiBzdHJ1Y3QgbWVtb3J5X3JhbmdlIGNyYXNoX3Jlc2VydmVkX21lbVtDUkFTSF9SRVNFUlZF
RF9NRU1fTlJdOwo+ID4gK2V4dGVybiBpbnQgY3Jhc2hfcmVzZXJ2ZWRfbWVtX25yOwo+ID4KPiA+
ICB1bnNpZ25lZCBsb25nIHJlYWRfdm1jb3JlaW5mb19zeW1ib2woY2hhciAqc3RyX3N5bWJvbCk7
Cj4gPiAgaW50IHJlYWRtZW0oaW50IHR5cGVfYWRkciwgdW5zaWduZWQgbG9uZyBsb25nIGFkZHIs
IHZvaWQgKmJ1ZnB0ciwgc2l6ZV90IHNpemUpOwo+ID4gLS0KPiA+IDIuMjQuMQo+Cj4KCgotLSAK
QmVzdCBSZWdhcmRzLApLYWlydWkgU29uZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
