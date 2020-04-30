Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C821BF30C
	for <lists+kexec@lfdr.de>; Thu, 30 Apr 2020 10:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nqc17h4WOHiejB7OX7ga29KiOHW96YrIyrOfQ1Qfsjk=; b=kdafbnSG/Z3SG2
	m5mD5um1ih6qgeqgoJ5f15pFMOoR/e1oZzwZhaeH0xHuEYDfURQ++hHyP+Vb+zkYbG575THdP6mmH
	0IMmJ00mu70+QOWimHPIzA6At8Zd36+fxQzL98GvPVMlcptPl2BvF+V7X3Gi53GrDJV6fdY09wADg
	ufPGyzzIE55CXqrGn7P+sfUEGhb+JoHbs2eKSGE9ftJ8y47kSdKL/SJb/OHUbVbY6sqEVFNNySVnV
	AOvDti75TWp1aRTg5r8E7wFoHq2t/bQJqxsSO5PeLT+vZ140k4XyZCbhHFBH8TPbJ+1QLum3DTj6q
	FDRfoRzF0dygfSdxPCww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4hy-0007mY-Iu; Thu, 30 Apr 2020 08:38:14 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4hu-0007lg-Gr
 for kexec@lists.infradead.org; Thu, 30 Apr 2020 08:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588235889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WXxdL/83RMr5KCH4Jh3CcM0ZF0s0FDz0qYUz0U7ru1A=;
 b=K9ziqLjgIU1r9uKocJV5XSkz2MzCIvgFsnsh3AVs6/pTmwXDUDA3tohYicANiDcbnrkf6p
 LXuWEjxAUNgaNpD4hMy/yM6BO+/s54g1g+GjFPuBZ9zwCgSWRilKwHjZK+C1+AjL92G6Iv
 vUbreQ1rqVleakiienr+rGAYLdo6rIU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-140-RX1hM5ELNfOFt0Hfm7OgmA-1; Thu, 30 Apr 2020 04:37:59 -0400
X-MC-Unique: RX1hM5ELNfOFt0Hfm7OgmA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D00019057A2;
 Thu, 30 Apr 2020 08:37:57 +0000 (UTC)
Received: from [10.72.8.18] (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B3F3A1C94D;
 Thu, 30 Apr 2020 08:37:53 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
To: =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
 <769ddb8a-c845-04a6-0064-d674bbd04ae3@redhat.com>
 <OSBPR01MB1991FEF11882F89353E6B342DDAD0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <e487a969-7660-bea8-405f-59f1aab426f5@redhat.com>
Date: Thu, 30 Apr 2020 16:37:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <OSBPR01MB1991FEF11882F89353E6B342DDAD0@OSBPR01MB1991.jpnprd01.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_013810_638481_84190ABD 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpPbiAwNC8yOS8yMDIwIDEwOjI3IFBNLCBIQUdJTyBLQVpVSElUTyjokKnlsL7jgIDkuIDku4Ep
IHdyb3RlOgo+IEhpIFBpbmdmYW4sCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+
IEhpIEthenUgYW5kIENhc2NhcmRvLAo+Pgo+PiBJIGVuY291bnRlciBhIHdlaXJkIHByb2JsZW0g
d2hlbiBydW5uaW5nIG1ha2VkdW1wZmlsZSBvbiBhIHMzOTAgbWFjaGluZS4KPj4KPj4gT3VyIHBy
b2R1Y3Rpb24ga2VybmVsIHVzZXMgZXh0cmVtZSBzcGFyc2UgbWVtb3J5IG1vZGVsLCBhbmQgaGFz
IHRoZQo+PiBmb2xsb3dpbmc6Cj4+Cj4+IGluIG1tL3NwYXJzZS5jCj4+Cj4+ICNpZmRlZiBDT05G
SUdfU1BBUlNFTUVNX0VYVFJFTUUKPj4gc3RydWN0IG1lbV9zZWN0aW9uICoqbWVtX3NlY3Rpb247
Cj4+ICNlbHNlCj4+IHN0cnVjdCBtZW1fc2VjdGlvbiBtZW1fc2VjdGlvbltOUl9TRUNUSU9OX1JP
T1RTXVtTRUNUSU9OU19QRVJfUk9PVF0KPj4gICAgICAgICBfX19fY2FjaGVsaW5lX2ludGVybm9k
ZWFsaWduZWRfaW5fc21wOwo+PiAjZW5kaWYKPj4KPj4gU28gaW4gbWFrZWR1bXBmaWxlLmMsIGdl
dF9tZW1fc2VjdGlvbigpLCBpdCBnb3QgYSBmYWlsZWQgcmVzdWx0IHdoZW4gdGhlCj4+IGZpcnN0
IGNhbGwgc2l0ZSB0byB2YWxpZGF0ZV9tZW1fc2VjdGlvbigpLCB0aGVuIGl0IHNob3VsZCBzdWNj
ZXNzIGF0IHRoZQo+PiBzZWNvbmQgY2FsbCBzaXRlIHRvIHZhbGlkYXRlX21lbV9zZWN0aW9uKCks
IHdoaWNoIGlzIGluc2lkZSBpZgo+PiAoaXNfc3BhcnNlbWVtX2V4dHJlbWUoKSkgY29uZGl0aW9u
Lgo+IAo+IEkgdGhpbmsgeW91ciBwcm9kdWN0aW9uIGtlcm5lbCBzaG91bGQgaGF2ZSBrZXJuZWwg
Y29tbWl0IGEwYjEyODAzNjhkMQo+ICgia2R1bXA6IHdyaXRlIGNvcnJlY3QgYWRkcmVzcyBvZiBt
ZW1fc2VjdGlvbiBpbnRvIHZtY29yZWluZm8iKSwgc28gdGhlCj4gZmlyc3QgY2FsbCBzaG91bGQg
cmV0dXJuIFRSVUUgYW5kIHRoZSBzZWNvbmQgb25lIHNob3VsZCByZXR1cm4gRkFMU0UuClllcywg
aXQgaXMuCj4gCj4+Cj4+IEJ1dCB0aGUgYWN0dWFsIHJlc3VsdCBpcyBub3QgbGlrZSBleHBlY3Rl
ZC4KPj4KPj4gQWZ0ZXIgaW50cm9kdWNpbmcKPj4gY29tbWl0IGUxMTNmMWM5NzRjODIwZjk2MzNk
YzAwNzNlZGE1MjVkNzU3NWYzNjUgICAgW1BBVENIXSBjb3BlIHdpdGgKPj4gbm90LXByZXNlbnQg
bWVtIHNlY3Rpb24KPj4KPj4gSSBnb3QgdHdvIHN1Y2Nlc3NmdWwgY2FsbHMgdG8gdmFsaWRhdGVf
bWVtX3NlY3Rpb24oKSwgYW5kIGZpbmFsbHkgZmFpbGVkCj4+IGF0IHRoZSBjb25kaXRpb24KPj4g
CQlyZXQgPSBzeW1ib2xfdmFsaWQgXiBwb2ludGVyX3ZhbGlkOwo+PiAJCWlmICghcmV0KSB7Cj4+
IAkJCUVSUk1TRygiQ291bGQgbm90IHZhbGlkYXRlIG1lbV9zZWN0aW9uLlxuIik7Cj4+IAkJfQo+
Pgo+Pgo+PiBEbyB5b3UgaGF2ZSBhbnkgaWRlYT8KPiAKPiBQcmVzdW1hYmx5IHRoaXMgd2lsbCBi
ZSB3aGF0IEkgZXhwZWN0ZWQgdGhhdCBpdCBtaWdodCBiZSBwb3NzaWJsZS4KPiBJIGNhbiBhcHBs
eSB0aGUgcGF0Y2ggYmVsb3cgdGhpcyB0aW1lLCB3aGF0IGFib3V0IHRoaXM/Cj4gaHR0cHM6Ly9n
aXRodWIuY29tL2staGFnaW8vbWFrZWR1bXBmaWxlLW9sZC9jb21taXQvY2U4ODNkZjM4NjRhNTc0
NGFjMGYxZWZmNDdkZTA2YjUwNzRlZGI1Zi5wYXRjaApsb29rcyBnb29kLgo+IAo+IG9yLCB3ZSBj
YW4gYWxzbyBpbnZlc3RpZ2F0ZSB3aHkgdGhlIHNlY29uZCBjYWxsIHJldHVybnMgVFJVRSwgYW5k
Cj4gZml4IHRoZSBjb25kaXRpb25zIGluIHRoZSB2YWxpZGF0ZV9tZW1fc2VjdGlvbigpLi4KVGhp
cyBpcyBkdWUgdG8gdGhlIHJlbGF4ZWQgY29uZGl0aW9uIGNoZWNrIGFmdGVyIGFwcGx5aW5nIG15
IGNvbW1pdApjb21taXQgZTExM2YxYzk3NCgiW1BBVENIXSBjb3BlIHdpdGggbm90LXByZXNlbnQg
bWVtIHNlY3Rpb24iKQoKZGlmZiAtLWdpdCBhL21ha2VkdW1wZmlsZS5jIGIvbWFrZWR1bXBmaWxl
LmMKaW5kZXggYWU3MzM2YS4uNjA3ZTA3ZiAxMDA2NDQKLS0tIGEvbWFrZWR1bXBmaWxlLmMKKysr
IGIvbWFrZWR1bXBmaWxlLmMKQEAgLTM0MDYsOCArMzQwNiw2IEBAIHNlY3Rpb25fbWVtX21hcF9h
ZGRyKHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQKbG9uZyAqbWFwX21hc2spCiAgICAgICAg
bWFwID0gVUxPTkcobWVtX3NlY3Rpb24gKyBPRkZTRVQobWVtX3NlY3Rpb24uc2VjdGlvbl9tZW1f
bWFwKSk7CiAgICAgICAgbWFzayA9IFNFQ1RJT05fTUFQX01BU0s7CiAgICAgICAgKm1hcF9tYXNr
ID0gbWFwICYgfm1hc2s7Ci0gICAgICAgaWYgKG1hcCA9PSAweDApCi0gICAgICAgICAgICAgICAq
bWFwX21hc2sgfD0gU0VDVElPTl9NQVJLRURfUFJFU0VOVDsKICAgICAgICBtYXAgJj0gbWFzazsK
ICAgICAgICBmcmVlKG1lbV9zZWN0aW9uKTsKCkBAIC0zNDUzLDEwICszNDUxLDggQEAgdmFsaWRh
dGVfbWVtX3NlY3Rpb24odW5zaWduZWQgbG9uZyAqbWVtX3NlYywKICAgICAgICAgICAgICAgICAg
ICAgICAgbWVtX21hcCA9IE5PVF9NRU1NQVBfQUREUjsKICAgICAgICAgICAgICAgIH0gZWxzZSB7
CiAgICAgICAgICAgICAgICAgICAgICAgIG1lbV9tYXAgPSBzZWN0aW9uX21lbV9tYXBfYWRkcihz
ZWN0aW9uLCAmbWFwX21hc2spOworICAgICAgICAgICAgICAgICAgICAgICAvKiBmb3IgZWl0aGVy
IG5vIG1lbV9tYXAgb3IgaG90LXJlbW92ZWQgKi8KICAgICAgICAgICAgICAgICAgICAgICAgaWYg
KCEobWFwX21hc2sgJiBTRUNUSU9OX01BUktFRF9QUkVTRU5UKSkgewotICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiBGQUxTRTsgLS0tLS0tPiBhIHN0cmljdCBjaGVjawotICAg
ICAgICAgICAgICAgICAgICAgICB9Ci0gICAgICAgICAgICAgICAgICAgICAgIGlmIChtZW1fbWFw
ID09IDApIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtZW1fbWFwID0gTk9UX01F
TU1BUF9BRERSOwogICAgICAgICAgICAgICAgICAgICAgICB9IGVsc2UgewogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIG1lbV9tYXAgPSBzcGFyc2VfZGVjb2RlX21lbV9tYXAobWVtX21h
cCwKCgpCZWZvcmUgbXkgcGF0Y2gsIGl0IHJldHVybiBGQUxTRSBmb3IgYW55IG5vbiBOVUxMIHZh
bHVlIHdpdGhvdXQKU0VDVElPTl9NQVJLRURfUFJFU0VOVC4gQnV0IG15IHBhdGNoIHJlbGF4ZXMg
dGhlIHJlc3RyaWN0aW9uIGFuZApjb25zaWRlciBpdCBhcyBob3QtcmVtb3ZlZCBtZW1fc2VjdGlv
biBhbmQga2VlcHMgdGhlIHBhcnNpbmcgb24uCgpUaGFua3MsClBpbmdmYW4KPiAKPiBUaGFua3Ms
Cj4gS2F6dQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4ga2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxp
c3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
