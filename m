Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D124163CF3
	for <lists+kexec@lfdr.de>; Wed, 19 Feb 2020 07:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQS0fqzahiZPZTnzrC9hvR4gtrHvuktZ0wPdsIXFdpU=; b=Fg0i1yAXJHnk7L
	9YTXY7kJY9yTlpPscdiE928e5Xj6dXNLc3B323f/JAD/gQyD7MYuO5qGMUvxdBwKxoNip7SJvKcsd
	OWuIKC7XtI6f2lOuc9sGSZOCcqDoe+GRAdTuYV6de3E3FSysKHUhd85KrYHN9UaD4oV4wQHlfWmsY
	iTc/j+S/b18QH43uKEnILpUE5bIO92gdbOVhgaoyqbrbJdy8rrJQ+unIRw8xZgmkwPHQPBq/nCRVn
	V5BYI/EyrrEZsyKoTv4vT54AlccQN0Mt3nKjUkg0XP71HH5CmY4oN41wYk1CCKnqrhALtO3UDbU/H
	AcTODSZ2FIX4j893ECqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Iea-000075-UV; Wed, 19 Feb 2020 06:16:12 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4IeS-0008TQ-BG
 for kexec@lists.infradead.org; Wed, 19 Feb 2020 06:16:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582092960;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eUTMwAM0MD7DQAP6C0bq0Bgw6h49aqNTeK0OeAsagIQ=;
 b=bNnGTN+uT+ehurqhhwRyMBbY02Ob/bccz7CzchY6ITkstBDFAx1v9MqSpLFk0vaJoh1U05
 vZuA5BiTl9fvexnL3byYybCYjoBK3eUdnGklbCi8x6ScIGXLy5+aR2iCimekc8QhdkqHE7
 EUUQhjx8PSJ3bivY2yDl0Z3U63t/OYs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-vm6xhBsGNsacpPTFHLZPPw-1; Wed, 19 Feb 2020 01:15:59 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E89F800D5E;
 Wed, 19 Feb 2020 06:15:57 +0000 (UTC)
Received: from [10.72.8.17] (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 76DF65D9E2;
 Wed, 19 Feb 2020 06:15:49 +0000 (UTC)
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
 <cca47a31-6e05-2812-65a1-832621992553@redhat.com>
 <0b743d83-d874-a093-82d1-e6d3d8bc47e0@redhat.com>
From: piliu <piliu@redhat.com>
Message-ID: <5d8adf59-a4fa-0a5f-84ea-6ce64f7d208c@redhat.com>
Date: Wed, 19 Feb 2020 14:15:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <0b743d83-d874-a093-82d1-e6d3d8bc47e0@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: vm6xhBsGNsacpPTFHLZPPw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_221604_468409_ABE00E7A 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

CgpPbiAwMi8xMi8yMDIwIDEyOjExIFBNLCBwaWxpdSB3cm90ZToKPiAKPiAKPiBPbiAwMi8wNi8y
MDIwIDExOjQ2IEFNLCBwaWxpdSB3cm90ZToKPj4KPj4KPj4gT24gMDIvMDUvMjAyMCAwNToxOCBB
TSwgSEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKSB3cm90ZToKPj4+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+Pj4+IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDAyOjI0OjE3UE0g
KzA4MDAsIHBpbGl1IHdyb3RlOgo+Pj4+PiBIaSwKPj4+Pj4KPj4+Pj4gU29ycnkgdG8gcmVwbHkg
bGF0ZSBkdWUgdG8gYSBsb25nIGZlc3RpdmFsLgo+Pj4+Pgo+Pj4+PiBJIGhhdmUgdGVzdGVkIHRo
aXMgcGF0Y2ggYWdhaW5zdCB2NC4xNSBhbmQgbGF0ZXN0IGtlcm5lbCB3aXRoIHNtYWxsCj4+Pj4+
IG1vZGlmaWNhdGlvbiB0byBtZWV0IHRoZSBzaXR1YXRpb24gd2UgZGlzY3Vzc2VkIGhlcmUuIEJv
dGggd29yayBmaW5lLgo+Pj4+Pgo+Pj4+PiBUaGUgYmVsb3cgaXMgdGhlIG1vZGlmaWNhdGlvbiBv
ZiB0d28ga2VybmVsCj4+Pj4+Cj4+Pj4+IHRlc3QxLiBsYXRlc3Qga2VybmVsIHdpdGggdHdvIGV4
dHJhIG1vZGlmaWNhdGlvbiB0byBleHBvc2UgdGhlIHByb2JsZW0KPj4+Pj4gLTEuMSByZXZlcnRz
IGNvbW1pdCAxZjUwMzQ0M2U3ZGY4ZGM4MzY2NjA4YjRkODEwY2UyZDY2Njk4MjdjCj4+Pj4+ICht
bS9zcGFyc2UuYzogcmVzZXQgc2VjdGlvbidzIG1lbV9tYXAgd2hlbiBmdWxseSBkZWFjdGl2YXRl
ZCksIHRoaXMKPj4+Pj4gY29tbWl0IHdvcmsgYXJvdW5kIHRoaXMgYnVnCj4+Pj4+IC0xLjIuIHJl
dmVydHMgY29tbWl0IGEwYjEyODAzNjhkMWU5MWFiNzJmODQ5ZWYwOTViNGYwN2EzOWJiZjEgKCJr
ZHVtcDoKPj4+Pj4gd3JpdGUgY29ycmVjdCBhZGRyZXNzIG9mIG1lbV9zZWN0aW9uIGludG8gdm1j
b3JlaW5mbyIpLiBUaGlzIHdpbGwgY3JlYXRlCj4+Pj4+IGEgYnVnZ3kgc2l0dWF0aW9uIGFzIHdl
IGRpc2N1c3NlZCBoZXJlLgo+Pj4+PiAtMS4zLiBmaXggYnVpbGRpbmcgYnVnIGR1ZSB0byByZXZl
cnQKPj4+Pj4gYTBiMTI4MDM2OGQxZTkxYWI3MmY4NDllZjA5NWI0ZjA3YTM5YmJmMQo+Pj4+Pgo+
Pj4+PiB0ZXN0Mi4gdjQuMTUsIHdoaWNoIGluY2x1ZGUgYm90aCBjb21taXQgODNlM2M0ODcyOWQ5
IGFuZCBhMGIxMjgwMzY4ZDEuCj4+Pj4+IC0yLjEuIHJldmVydCBjb21taXQgYTBiMTI4MDM2OGQx
ZTkxYWI3MmY4NDllZjA5NWI0ZjA3YTM5YmJmMSAoImtkdW1wOgo+Pj4+PiB3cml0ZSBjb3JyZWN0
IGFkZHJlc3Mgb2YgbWVtX3NlY3Rpb24gaW50byB2bWNvcmVpbmZvIikKPj4+Pj4KPj4+Pj4gU28g
SSBjYW4gbm90IHNlZSBhbnkgcHJvYmxlbSB3aXRoIG15IHBhdGNoLgo+Pj4+PiBNYXliZSBJIG1p
c3VuZGVyc3RhbmQgdGhlIGRpc2N1c3Npb24sIGJ1dCBJIGNhbiBub3Qgc2VlIG15IG9yaWdpbmFs
Cj4+Pj4+IHBhdGNoIHdpbGwgYnJlYWsgdGhlIGtlcm5lbCB3aGljaCBoYXZlIDgzZTNjNDg3Mjlk
OSBidXQgbm90IGEwYjEyODAzNjhkMS4KPj4+Pj4KPj4+Pj4gVGhhbmtzLAo+Pj4+PiBQaW5nZmFu
Cj4+Pj4+Cj4+Pj4KPj4+PiBZb3UgYWxzbyBuZWVkIHRvIHRlc3QgdGhlIGNhc2Ugd2hlcmUgODNl
M2M0ODcyOWQ5IGlzIG5vdCBwcmVzZW50IGF0IGFsbC4gQ2FuCj4+Pj4geW91IHRlc3Qgb24gYSA0
LjQga2VybmVsLCBmb3IgZXhhbXBsZT8gQXMgZmFyIGFzIEkgdW5kZXJzdGFuZCwgYSB2YW5pbGxh
IDQuNAo+Pj4+IGtlcm5lbCB3b3VsZCBub3QgYmUgZHVtcGFibGUgd2l0aCB5b3VyIHBhdGNoLgo+
Pj4KPj4+IEFzIGZhciBhcyBJJ3ZlIHRlc3RlZCB0aGlzIHBhdGNoIHdpdGggU1BBUlNFTUVNX0VY
VFJFTUUgdm1jb3JlcyBiZWxvdywgaXQncyBPSzoKPj4+ICAgLSA1MSB2bWNvcmVzIG9mIHZhbmls
bGEga2VybmVscyAoZWFjaCBmcm9tIDIuNi4zNiB0aHJvdWdoIDUuNSkgb24gaGFuZAo+Pj4gICAt
IG9uZSBtb3JlIHZhbmlsbGEgNC40LjAga2VybmVsIHdpdGggYSBkaWZmZXJlbnQgY29uZmlnIGZy
b20gdGhlIGFib3ZlCj4+Pgo+Pj4gU28gYXBwYXJlbnRseSBub3QgYWxsIHZhbmlsbGEgNC40IGtl
cm5lbHMgYXJlIGFmZmVjdGVkIGJ5IHRoZSBwYXRjaC4KPj4+Cj4+IFNvcnJ5LCBkdWUgdG8gdG91
Y2ggaGFyZHdhcmUgcmVzb3VyY2UgaW4gb3VyIGxhYiwgSSBjYW4gbm90IGhhdmUgYSB0ZXN0Cj4+
IG9uIHY0LjQgb24gYSBzeXN0ZW0gd2l0aCBob3RwbHVnIG1lbW9yeSB5ZXQuIEkgc3RpbGwgdHJ5
IHRvIGZpbmQgc29tZQo+PiByZXNvdXJjZS4KPj4KPj4gQnV0IGZyb20gdGhlIGxvZ2ljIG9mIHRo
aXMgcGF0Y2gsIGl0IGp1c3QgZG9lcyB0aGUgZm9sbG93aW5nIGNoYW5nZXM6Cj4+IC0xLiBBZnRl
ciBtZW1vcnkgaG90LXJlbW92ZWQsIGVpdGhlciBtZW1fc2VjdGlvbi5zZWN0aW9uX21lbV9tYXAg
PSBOVUxMCj4+IG9yIG1lbV9zZWN0aW9uLnNlY3Rpb25fbWVtX21hcCB3aXRob3V0IFNFQ1RJT05f
TUFSS0VEX1BSRVNFTlQsIHdlIHdpbGwKPj4gaGF2ZSBtZW1fbWFwc1tzZWN0aW9uX25yXSA9IG1l
bV9tYXAgPSBOT1RfTUVNTUFQX0FERFIsIHNvIGxhdGVyIGl0IHdpbGwKPj4gYmUgc2tpcHBlZC4K
Pj4gLTIuIElmIG5vdCBwb3B1bGF0ZWQsIG1lbV9zZWN0aW9uLnNlY3Rpb25fbWVtX21hcCA9IE5V
TEwuIEl0IGNhbiBmb2xsb3cKPj4gdGhlIHNhbWUgaGFuZGxpbmcgb2YgaG90LXJlbW92ZWQsIGFu
ZCBiZSBza2lwcGVkIGR1cmluZyBwYXJzaW5nLgo+Pgo+PiBBbmQgaW4gdjQuNCBzcGFyc2VfcmVt
b3ZlX29uZV9zZWN0aW9uKCkganVzdCBhc3NpZ25zIG1zLT5zZWN0aW9uX21lbV9tYXAKPj4gPSAw
LCB3aGljaCBjYW4gbm90IGJlIHZpb2xhdGVkIGJ5IHRoZSBhYm92ZSBjaGFuZ2VzLgpQaW5nLiBB
cyBhbGwgb2YgdXMgY2FuIG5vdCByZXByb2R1Y2UgdGhpcyBidWcgYnkgdjQuNCBrZXJuZWwsIGZ1
cnRoZXIKbW9yZSwgdGhlcmUgaXMgbm8gY29kZSBhbmFseXNpcywgd2hpY2ggcGVyc3VhZGVzIHVz
IHRoaXMgcGF0Y2ggd2lsbApicmVhayB0aGUgbWFrZWR1bXBmaWxlIG9uIGFueSBrZXJuZWwgdmVy
c2lvbi4KCkNvdWxkIHRoaXMgYmV0dGVyLXRvLWhhdmUgcGF0Y2ggYmUgYWNjZXB0ZWQ/CgpUaGFu
a3MsClBpbmdmYW4KPiBMYXN0IG5pZ2h0LCBJIGdvdCBhIG1hY2hpbmUgdG8gdGVzdCB0aGlzIHNj
ZW5lLiBBZnRlciBhcHBseWluZyBteSBwYXRjaAo+IG1ha2VkdW1wZmlsZSBjYW4gc3RpbGwgd29y
ayB3aXRoIHY0LjQga2VybmVsLgo+IAo+IFRoYW5rcywKPiBQaW5nZmFuCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0
CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo=
