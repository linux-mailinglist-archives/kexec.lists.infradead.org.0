Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DB5165512
	for <lists+kexec@lfdr.de>; Thu, 20 Feb 2020 03:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoT2OM8ET87c1Cb6b3JKCZrNgwIsrSR7azlQp85fGlY=; b=UfTVPICgD+MEv0
	lGpAiZBU4mO1+IywL+dy+IwYxFUGBq9y0bYPJcidEmRUspeiS/g4/5hEhXq3Gkb1PW9UgQapORMwv
	A+qHvTZKTjsS67U2AhAiRut6iq/eQKiDmpNgud9WSNRMMxgJsxmlHtw3zJ+SYCXw5FDCC1hedCUkT
	T2UnFdE+ulB+LnlUHAO1JczJk1Ey1henA4f6JB6VX3Si175VvfzMktM3mxmyTc7etqEU/tp/V1c7n
	TTV5s9y4cdr/Y6/7bbjnPTPDz2cXDOC3jRstb9vR97EpKqmBUvyWcsgDn5y0w7gnHVZt2EWOfHkhf
	VtaIbMmYI2edDkoZVl4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4bbA-00086C-6K; Thu, 20 Feb 2020 02:29:56 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4bb6-00085Y-Ck
 for kexec@lists.infradead.org; Thu, 20 Feb 2020 02:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582165790;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K2TKGPEFgjqsuW3aM+QANB+cmAaxJEEMffDiQeC9rBE=;
 b=aZIHPPZMAGMhG+nfdV7hg1Iptot/MHRlBA24r8haKfOTfd3Bxb+H6AZ+xIOV/tZPBJnN1S
 YtQ09bV/4WIn+iGtdfMRA7ZsAUekgFC4X3yH9GNaoZGHFhM8f1zruvXQ0IIh9hb0gKc7uv
 wj2/wx6hIg+7Osy35vcXfaFIYppt3zI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-071eIRx1O_-R1OV5s_feeQ-1; Wed, 19 Feb 2020 21:29:48 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CC0C107ACC7;
 Thu, 20 Feb 2020 02:29:46 +0000 (UTC)
Received: from [10.72.8.18] (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F14C5C28E;
 Thu, 20 Feb 2020 02:29:37 +0000 (UTC)
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
 <5d8adf59-a4fa-0a5f-84ea-6ce64f7d208c@redhat.com>
 <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <2902b7be-5361-ea21-fcc6-099f4cc7551d@redhat.com>
Date: Thu, 20 Feb 2020 10:29:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <TY2PR01MB52102E12F7A39389CE97EF7EDD100@TY2PR01MB5210.jpnprd01.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 071eIRx1O_-R1OV5s_feeQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_182952_509648_69091471 
X-CRM114-Status: GOOD (  24.87  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

CgpPbiAwMi8yMC8yMDIwIDA0OjEyIEFNLCBIQUdJTyBLQVpVSElUTyjokKnlsL7jgIDkuIDku4Ep
IHdyb3RlOgo+IEhpIENhc2NhcmRvLAo+IAo+IERvIHlvdSBoYXZlIGFueSBzb2x1dGlvbiBvciBk
ZXRhaWxlZCBpbmZvcm1hdGlvbiBvbiB0aGUgZmFpbHVyZSBvbiB5b3VyIGtlcm5lbD8KPiBvciBj
b3VsZCB5b3UgdHJ5IHRoaXMgYnJhbmNoPyAgSXQgaGFzIGFuIGFkZGl0aW9uYWwgcGF0Y2ggb24g
dG9wIG9mIFBpbmdmYW4ncwo+IG9uZSB0byBhdm9pZCB0aGUgZmFsc2UgcG9zaXRpdmUgZmFpbHVy
ZSB0aGF0IEknbSBzdXNwZWN0aW5nOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9rLWhhZ2lvL21ha2Vk
dW1wZmlsZS90cmVlL21vZGlmeS1tZW1fc2VjdGlvbi12YWxpZGF0aW9uCj4gCj4gUGluZ2ZhbiwK
PiBEbyB5b3UgaGF2ZSBhbiBvdXRwdXQgb2YgbWFrZWR1bXBmaWxlIHdoZW4gdGhlIG9yaWdpbmFs
IGZhaWx1cmUgb2NjdXJzPwo+IElmIHlvdSBkb24ndCBhbmQgaXQncyBoYXJkIHRvIGdldCBpdCwg
bm8gbmVlZCB0byBkbyBzby4gIEkganVzdCB3b3VsZCBsaWtlIHRvCj4gYWRkIGl0IHRvIHlvdXIg
cGF0Y2ggaWYgYXZhaWxhYmxlLgpJIGRpZCB0aGUgdGVzdCBvbiBhIFBvd2VyVk0uIEFmdGVyIGhv
dCByZW1vdmluZyB0aGUgbWVtb3J5LCBzYXZlIGEgcmF3CnZtY29yZSBieSAiY3AiLCB0aGVuIHJ1
biBtYWtlZHVtcGZpbGUgYWdhaW5zdCB0aGUgImNwIiB2bWNvcmUsIGFuZCBpdAp3aWxsIGdldCB0
aGUgZm9sbG93aW5nIGVycm9yIG1lc3NhZ2U6CiMgbWFrZWR1bXBmaWxlIC14IHZtbGludXggLWwg
LWQgMzEgdm1jb3JlIHZtY29yZS5kdW1wCmdldF9tZW1fc2VjdGlvbjogQ291bGQgbm90IHZhbGlk
YXRlIG1lbV9zZWN0aW9uLgpnZXRfbW1fc3BhcnNlbWVtOiBDYW4ndCBnZXQgdGhlIGFkZHJlc3Mg
b2YgbWVtX3NlY3Rpb24uCgptYWtlZHVtcGZpbGUgRmFpbGVkLgoKVGhhbmtzLApQaW5nZmFuCj4g
Cj4gVGhhbmtzLAo+IEthenUKPiAKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBPbiAw
Mi8xMi8yMDIwIDEyOjExIFBNLCBwaWxpdSB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMDIvMDYvMjAy
MCAxMTo0NiBBTSwgcGlsaXUgd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDAyLzA1LzIwMjAgMDU6
MTggQU0sIEhBR0lPIEtBWlVISVRPIHdyb3RlOgo+Pj4+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0KPj4+Pj4+IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDAyOjI0OjE3UE0gKzA4MDAsIHBp
bGl1IHdyb3RlOgo+Pj4+Pj4+IEhpLAo+Pj4+Pj4+Cj4+Pj4+Pj4gU29ycnkgdG8gcmVwbHkgbGF0
ZSBkdWUgdG8gYSBsb25nIGZlc3RpdmFsLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBoYXZlIHRlc3RlZCB0
aGlzIHBhdGNoIGFnYWluc3QgdjQuMTUgYW5kIGxhdGVzdCBrZXJuZWwgd2l0aCBzbWFsbAo+Pj4+
Pj4+IG1vZGlmaWNhdGlvbiB0byBtZWV0IHRoZSBzaXR1YXRpb24gd2UgZGlzY3Vzc2VkIGhlcmUu
IEJvdGggd29yayBmaW5lLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhlIGJlbG93IGlzIHRoZSBtb2RpZmlj
YXRpb24gb2YgdHdvIGtlcm5lbAo+Pj4+Pj4+Cj4+Pj4+Pj4gdGVzdDEuIGxhdGVzdCBrZXJuZWwg
d2l0aCB0d28gZXh0cmEgbW9kaWZpY2F0aW9uIHRvIGV4cG9zZSB0aGUgcHJvYmxlbQo+Pj4+Pj4+
IC0xLjEgcmV2ZXJ0cyBjb21taXQgMWY1MDM0NDNlN2RmOGRjODM2NjYwOGI0ZDgxMGNlMmQ2NjY5
ODI3Ywo+Pj4+Pj4+IChtbS9zcGFyc2UuYzogcmVzZXQgc2VjdGlvbidzIG1lbV9tYXAgd2hlbiBm
dWxseSBkZWFjdGl2YXRlZCksIHRoaXMKPj4+Pj4+PiBjb21taXQgd29yayBhcm91bmQgdGhpcyBi
dWcKPj4+Pj4+PiAtMS4yLiByZXZlcnRzIGNvbW1pdCBhMGIxMjgwMzY4ZDFlOTFhYjcyZjg0OWVm
MDk1YjRmMDdhMzliYmYxICgia2R1bXA6Cj4+Pj4+Pj4gd3JpdGUgY29ycmVjdCBhZGRyZXNzIG9m
IG1lbV9zZWN0aW9uIGludG8gdm1jb3JlaW5mbyIpLiBUaGlzIHdpbGwgY3JlYXRlCj4+Pj4+Pj4g
YSBidWdneSBzaXR1YXRpb24gYXMgd2UgZGlzY3Vzc2VkIGhlcmUuCj4+Pj4+Pj4gLTEuMy4gZml4
IGJ1aWxkaW5nIGJ1ZyBkdWUgdG8gcmV2ZXJ0Cj4+Pj4+Pj4gYTBiMTI4MDM2OGQxZTkxYWI3MmY4
NDllZjA5NWI0ZjA3YTM5YmJmMQo+Pj4+Pj4+Cj4+Pj4+Pj4gdGVzdDIuIHY0LjE1LCB3aGljaCBp
bmNsdWRlIGJvdGggY29tbWl0IDgzZTNjNDg3MjlkOSBhbmQgYTBiMTI4MDM2OGQxLgo+Pj4+Pj4+
IC0yLjEuIHJldmVydCBjb21taXQgYTBiMTI4MDM2OGQxZTkxYWI3MmY4NDllZjA5NWI0ZjA3YTM5
YmJmMSAoImtkdW1wOgo+Pj4+Pj4+IHdyaXRlIGNvcnJlY3QgYWRkcmVzcyBvZiBtZW1fc2VjdGlv
biBpbnRvIHZtY29yZWluZm8iKQo+Pj4+Pj4+Cj4+Pj4+Pj4gU28gSSBjYW4gbm90IHNlZSBhbnkg
cHJvYmxlbSB3aXRoIG15IHBhdGNoLgo+Pj4+Pj4+IE1heWJlIEkgbWlzdW5kZXJzdGFuZCB0aGUg
ZGlzY3Vzc2lvbiwgYnV0IEkgY2FuIG5vdCBzZWUgbXkgb3JpZ2luYWwKPj4+Pj4+PiBwYXRjaCB3
aWxsIGJyZWFrIHRoZSBrZXJuZWwgd2hpY2ggaGF2ZSA4M2UzYzQ4NzI5ZDkgYnV0IG5vdCBhMGIx
MjgwMzY4ZDEuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGFua3MsCj4+Pj4+Pj4gUGluZ2Zhbgo+Pj4+Pj4+
Cj4+Pj4+Pgo+Pj4+Pj4gWW91IGFsc28gbmVlZCB0byB0ZXN0IHRoZSBjYXNlIHdoZXJlIDgzZTNj
NDg3MjlkOSBpcyBub3QgcHJlc2VudCBhdCBhbGwuIENhbgo+Pj4+Pj4geW91IHRlc3Qgb24gYSA0
LjQga2VybmVsLCBmb3IgZXhhbXBsZT8gQXMgZmFyIGFzIEkgdW5kZXJzdGFuZCwgYSB2YW5pbGxh
IDQuNAo+Pj4+Pj4ga2VybmVsIHdvdWxkIG5vdCBiZSBkdW1wYWJsZSB3aXRoIHlvdXIgcGF0Y2gu
Cj4+Pj4+Cj4+Pj4+IEFzIGZhciBhcyBJJ3ZlIHRlc3RlZCB0aGlzIHBhdGNoIHdpdGggU1BBUlNF
TUVNX0VYVFJFTUUgdm1jb3JlcyBiZWxvdywgaXQncyBPSzoKPj4+Pj4gICAtIDUxIHZtY29yZXMg
b2YgdmFuaWxsYSBrZXJuZWxzIChlYWNoIGZyb20gMi42LjM2IHRocm91Z2ggNS41KSBvbiBoYW5k
Cj4+Pj4+ICAgLSBvbmUgbW9yZSB2YW5pbGxhIDQuNC4wIGtlcm5lbCB3aXRoIGEgZGlmZmVyZW50
IGNvbmZpZyBmcm9tIHRoZSBhYm92ZQo+Pj4+Pgo+Pj4+PiBTbyBhcHBhcmVudGx5IG5vdCBhbGwg
dmFuaWxsYSA0LjQga2VybmVscyBhcmUgYWZmZWN0ZWQgYnkgdGhlIHBhdGNoLgo+Pj4+Pgo+Pj4+
IFNvcnJ5LCBkdWUgdG8gdG91Y2ggaGFyZHdhcmUgcmVzb3VyY2UgaW4gb3VyIGxhYiwgSSBjYW4g
bm90IGhhdmUgYSB0ZXN0Cj4+Pj4gb24gdjQuNCBvbiBhIHN5c3RlbSB3aXRoIGhvdHBsdWcgbWVt
b3J5IHlldC4gSSBzdGlsbCB0cnkgdG8gZmluZCBzb21lCj4+Pj4gcmVzb3VyY2UuCj4+Pj4KPj4+
PiBCdXQgZnJvbSB0aGUgbG9naWMgb2YgdGhpcyBwYXRjaCwgaXQganVzdCBkb2VzIHRoZSBmb2xs
b3dpbmcgY2hhbmdlczoKPj4+PiAtMS4gQWZ0ZXIgbWVtb3J5IGhvdC1yZW1vdmVkLCBlaXRoZXIg
bWVtX3NlY3Rpb24uc2VjdGlvbl9tZW1fbWFwID0gTlVMTAo+Pj4+IG9yIG1lbV9zZWN0aW9uLnNl
Y3Rpb25fbWVtX21hcCB3aXRob3V0IFNFQ1RJT05fTUFSS0VEX1BSRVNFTlQsIHdlIHdpbGwKPj4+
PiBoYXZlIG1lbV9tYXBzW3NlY3Rpb25fbnJdID0gbWVtX21hcCA9IE5PVF9NRU1NQVBfQUREUiwg
c28gbGF0ZXIgaXQgd2lsbAo+Pj4+IGJlIHNraXBwZWQuCj4+Pj4gLTIuIElmIG5vdCBwb3B1bGF0
ZWQsIG1lbV9zZWN0aW9uLnNlY3Rpb25fbWVtX21hcCA9IE5VTEwuIEl0IGNhbiBmb2xsb3cKPj4+
PiB0aGUgc2FtZSBoYW5kbGluZyBvZiBob3QtcmVtb3ZlZCwgYW5kIGJlIHNraXBwZWQgZHVyaW5n
IHBhcnNpbmcuCj4+Pj4KPj4+PiBBbmQgaW4gdjQuNCBzcGFyc2VfcmVtb3ZlX29uZV9zZWN0aW9u
KCkganVzdCBhc3NpZ25zIG1zLT5zZWN0aW9uX21lbV9tYXAKPj4+PiA9IDAsIHdoaWNoIGNhbiBu
b3QgYmUgdmlvbGF0ZWQgYnkgdGhlIGFib3ZlIGNoYW5nZXMuCj4+IFBpbmcuIEFzIGFsbCBvZiB1
cyBjYW4gbm90IHJlcHJvZHVjZSB0aGlzIGJ1ZyBieSB2NC40IGtlcm5lbCwgZnVydGhlcgo+PiBt
b3JlLCB0aGVyZSBpcyBubyBjb2RlIGFuYWx5c2lzLCB3aGljaCBwZXJzdWFkZXMgdXMgdGhpcyBw
YXRjaCB3aWxsCj4+IGJyZWFrIHRoZSBtYWtlZHVtcGZpbGUgb24gYW55IGtlcm5lbCB2ZXJzaW9u
Lgo+Pgo+PiBDb3VsZCB0aGlzIGJldHRlci10by1oYXZlIHBhdGNoIGJlIGFjY2VwdGVkPwo+Pgo+
PiBUaGFua3MsCj4+IFBpbmdmYW4KPj4+IExhc3QgbmlnaHQsIEkgZ290IGEgbWFjaGluZSB0byB0
ZXN0IHRoaXMgc2NlbmUuIEFmdGVyIGFwcGx5aW5nIG15IHBhdGNoCj4+PiBtYWtlZHVtcGZpbGUg
Y2FuIHN0aWxsIHdvcmsgd2l0aCB2NC40IGtlcm5lbC4KPj4+Cj4+PiBUaGFua3MsCj4+PiBQaW5n
ZmFuCj4+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
