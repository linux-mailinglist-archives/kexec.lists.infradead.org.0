Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045FC153DAD
	for <lists+kexec@lfdr.de>; Thu,  6 Feb 2020 04:47:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfFMasAlBS8Y1Z0Fq29rk9HjYWeZ2T2bNqNmTazYrQk=; b=g15fl8ts002Evh
	0htH4D6AdaCyPYD+avTCEWjYOfEGtF2YfH82tcDuaKHV8iKjznqcl+s6oWO23ZutcRKmpyzug3TG1
	5AH1rKM0Tzu80sfTKokey8Om5JpGuE/1vmKyMR/QL0ZQttJPBEjxTZAS9GDeksj9wcpEDnbisG/8H
	SVTWFGQ5FkdcRvTXNy/aQQUqL0kYakU+WnbVHwnEsARVhILcGRJXW96NZ/r0P/65PPuTaOi1CrlCY
	61sDVcY4qxaMK3pfQVncQzWCR3QzHUwHZjZ0n4+jvwNwGezOa5J7Rn+vjUMkH2hFvkm96jtQ9BUdU
	pL3mFbMQ0xBIdpcELZ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izY85-000552-4o; Thu, 06 Feb 2020 03:47:01 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izY7x-0004vH-LB
 for kexec@lists.infradead.org; Thu, 06 Feb 2020 03:46:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580960808;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NgRQGg/DT7GP/3/yYCw/yYzfzxFj3d3Wjjf4h/CcseU=;
 b=dU4j8lCa/h1m0O2vPxDMr4K7odG8qYiWXhf0ex1awOv80RR492VDP1IQS1VueZoGk9jiAk
 YL/9bU5oWnyG3OGUZO9vcaHDF764lsgU7EMJj0BO/EKh/rjjcQ215zUL+oFBs9RJPVdZAo
 lkzE0GUgx2XJKJHvHV60F8fjPU9sLSU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-xE0XEefzOBWwtNjyGqA33A-1; Wed, 05 Feb 2020 22:46:44 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB3EC8010F9;
 Thu,  6 Feb 2020 03:46:42 +0000 (UTC)
Received: from [10.72.8.20] (ovpn-8-20.pek2.redhat.com [10.72.8.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C3DC5C1B2;
 Thu,  6 Feb 2020 03:46:35 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
To: =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>, Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
 <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
 <20200204103954.GH40679@calabresa>
 <TY2PR01MB52108AD0131515408592E08CDD030@TY2PR01MB5210.jpnprd01.prod.outlook.com>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <cca47a31-6e05-2812-65a1-832621992553@redhat.com>
Date: Thu, 6 Feb 2020 11:46:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <TY2PR01MB52108AD0131515408592E08CDD030@TY2PR01MB5210.jpnprd01.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: xE0XEefzOBWwtNjyGqA33A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_194654_030794_DE243CC3 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpPbiAwMi8wNS8yMDIwIDA1OjE4IEFNLCBIQUdJTyBLQVpVSElUTyjokKnlsL7jgIDkuIDku4Ep
IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBPbiBUdWUsIEZlYiAwNCwg
MjAyMCBhdCAwMjoyNDoxN1BNICswODAwLCBwaWxpdSB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+IFNv
cnJ5IHRvIHJlcGx5IGxhdGUgZHVlIHRvIGEgbG9uZyBmZXN0aXZhbC4KPj4+Cj4+PiBJIGhhdmUg
dGVzdGVkIHRoaXMgcGF0Y2ggYWdhaW5zdCB2NC4xNSBhbmQgbGF0ZXN0IGtlcm5lbCB3aXRoIHNt
YWxsCj4+PiBtb2RpZmljYXRpb24gdG8gbWVldCB0aGUgc2l0dWF0aW9uIHdlIGRpc2N1c3NlZCBo
ZXJlLiBCb3RoIHdvcmsgZmluZS4KPj4+Cj4+PiBUaGUgYmVsb3cgaXMgdGhlIG1vZGlmaWNhdGlv
biBvZiB0d28ga2VybmVsCj4+Pgo+Pj4gdGVzdDEuIGxhdGVzdCBrZXJuZWwgd2l0aCB0d28gZXh0
cmEgbW9kaWZpY2F0aW9uIHRvIGV4cG9zZSB0aGUgcHJvYmxlbQo+Pj4gLTEuMSByZXZlcnRzIGNv
bW1pdCAxZjUwMzQ0M2U3ZGY4ZGM4MzY2NjA4YjRkODEwY2UyZDY2Njk4MjdjCj4+PiAobW0vc3Bh
cnNlLmM6IHJlc2V0IHNlY3Rpb24ncyBtZW1fbWFwIHdoZW4gZnVsbHkgZGVhY3RpdmF0ZWQpLCB0
aGlzCj4+PiBjb21taXQgd29yayBhcm91bmQgdGhpcyBidWcKPj4+IC0xLjIuIHJldmVydHMgY29t
bWl0IGEwYjEyODAzNjhkMWU5MWFiNzJmODQ5ZWYwOTViNGYwN2EzOWJiZjEgKCJrZHVtcDoKPj4+
IHdyaXRlIGNvcnJlY3QgYWRkcmVzcyBvZiBtZW1fc2VjdGlvbiBpbnRvIHZtY29yZWluZm8iKS4g
VGhpcyB3aWxsIGNyZWF0ZQo+Pj4gYSBidWdneSBzaXR1YXRpb24gYXMgd2UgZGlzY3Vzc2VkIGhl
cmUuCj4+PiAtMS4zLiBmaXggYnVpbGRpbmcgYnVnIGR1ZSB0byByZXZlcnQKPj4+IGEwYjEyODAz
NjhkMWU5MWFiNzJmODQ5ZWYwOTViNGYwN2EzOWJiZjEKPj4+Cj4+PiB0ZXN0Mi4gdjQuMTUsIHdo
aWNoIGluY2x1ZGUgYm90aCBjb21taXQgODNlM2M0ODcyOWQ5IGFuZCBhMGIxMjgwMzY4ZDEuCj4+
PiAtMi4xLiByZXZlcnQgY29tbWl0IGEwYjEyODAzNjhkMWU5MWFiNzJmODQ5ZWYwOTViNGYwN2Ez
OWJiZjEgKCJrZHVtcDoKPj4+IHdyaXRlIGNvcnJlY3QgYWRkcmVzcyBvZiBtZW1fc2VjdGlvbiBp
bnRvIHZtY29yZWluZm8iKQo+Pj4KPj4+IFNvIEkgY2FuIG5vdCBzZWUgYW55IHByb2JsZW0gd2l0
aCBteSBwYXRjaC4KPj4+IE1heWJlIEkgbWlzdW5kZXJzdGFuZCB0aGUgZGlzY3Vzc2lvbiwgYnV0
IEkgY2FuIG5vdCBzZWUgbXkgb3JpZ2luYWwKPj4+IHBhdGNoIHdpbGwgYnJlYWsgdGhlIGtlcm5l
bCB3aGljaCBoYXZlIDgzZTNjNDg3MjlkOSBidXQgbm90IGEwYjEyODAzNjhkMS4KPj4+Cj4+PiBU
aGFua3MsCj4+PiBQaW5nZmFuCj4+Pgo+Pgo+PiBZb3UgYWxzbyBuZWVkIHRvIHRlc3QgdGhlIGNh
c2Ugd2hlcmUgODNlM2M0ODcyOWQ5IGlzIG5vdCBwcmVzZW50IGF0IGFsbC4gQ2FuCj4+IHlvdSB0
ZXN0IG9uIGEgNC40IGtlcm5lbCwgZm9yIGV4YW1wbGU/IEFzIGZhciBhcyBJIHVuZGVyc3RhbmQs
IGEgdmFuaWxsYSA0LjQKPj4ga2VybmVsIHdvdWxkIG5vdCBiZSBkdW1wYWJsZSB3aXRoIHlvdXIg
cGF0Y2guCj4gCj4gQXMgZmFyIGFzIEkndmUgdGVzdGVkIHRoaXMgcGF0Y2ggd2l0aCBTUEFSU0VN
RU1fRVhUUkVNRSB2bWNvcmVzIGJlbG93LCBpdCdzIE9LOgo+ICAgLSA1MSB2bWNvcmVzIG9mIHZh
bmlsbGEga2VybmVscyAoZWFjaCBmcm9tIDIuNi4zNiB0aHJvdWdoIDUuNSkgb24gaGFuZAo+ICAg
LSBvbmUgbW9yZSB2YW5pbGxhIDQuNC4wIGtlcm5lbCB3aXRoIGEgZGlmZmVyZW50IGNvbmZpZyBm
cm9tIHRoZSBhYm92ZQo+IAo+IFNvIGFwcGFyZW50bHkgbm90IGFsbCB2YW5pbGxhIDQuNCBrZXJu
ZWxzIGFyZSBhZmZlY3RlZCBieSB0aGUgcGF0Y2guCj4gClNvcnJ5LCBkdWUgdG8gdG91Y2ggaGFy
ZHdhcmUgcmVzb3VyY2UgaW4gb3VyIGxhYiwgSSBjYW4gbm90IGhhdmUgYSB0ZXN0Cm9uIHY0LjQg
b24gYSBzeXN0ZW0gd2l0aCBob3RwbHVnIG1lbW9yeSB5ZXQuIEkgc3RpbGwgdHJ5IHRvIGZpbmQg
c29tZQpyZXNvdXJjZS4KCkJ1dCBmcm9tIHRoZSBsb2dpYyBvZiB0aGlzIHBhdGNoLCBpdCBqdXN0
IGRvZXMgdGhlIGZvbGxvd2luZyBjaGFuZ2VzOgotMS4gQWZ0ZXIgbWVtb3J5IGhvdC1yZW1vdmVk
LCBlaXRoZXIgbWVtX3NlY3Rpb24uc2VjdGlvbl9tZW1fbWFwID0gTlVMTApvciBtZW1fc2VjdGlv
bi5zZWN0aW9uX21lbV9tYXAgd2l0aG91dCBTRUNUSU9OX01BUktFRF9QUkVTRU5ULCB3ZSB3aWxs
CmhhdmUgbWVtX21hcHNbc2VjdGlvbl9ucl0gPSBtZW1fbWFwID0gTk9UX01FTU1BUF9BRERSLCBz
byBsYXRlciBpdCB3aWxsCmJlIHNraXBwZWQuCi0yLiBJZiBub3QgcG9wdWxhdGVkLCBtZW1fc2Vj
dGlvbi5zZWN0aW9uX21lbV9tYXAgPSBOVUxMLiBJdCBjYW4gZm9sbG93CnRoZSBzYW1lIGhhbmRs
aW5nIG9mIGhvdC1yZW1vdmVkLCBhbmQgYmUgc2tpcHBlZCBkdXJpbmcgcGFyc2luZy4KCkFuZCBp
biB2NC40IHNwYXJzZV9yZW1vdmVfb25lX3NlY3Rpb24oKSBqdXN0IGFzc2lnbnMgbXMtPnNlY3Rp
b25fbWVtX21hcAo9IDAsIHdoaWNoIGNhbiBub3QgYmUgdmlvbGF0ZWQgYnkgdGhlIGFib3ZlIGNo
YW5nZXMuCgpUaGFua3MsClBpbmdmYW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
