Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2A9159FC9
	for <lists+kexec@lfdr.de>; Wed, 12 Feb 2020 05:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4G72v0BKmMSqJChLQM2Xi0e8SrjliNHd9ai8x5HDCoY=; b=sqFekjPwM0zkh5
	CpfQB8OLcYQxEsnb4Ul7cS3Js5aa85epohN9SwJF5hABNjGbh2nnJrRWetl72VAPp6kp/bkdczMTg
	mx5Y+Go/aASb+ue0dwTxBgBEEqi8SBcfQLsBLQebOd4rxMtHi6CQQbicFDJ4p1+hjiNdJy6FZvDip
	NcxrEOJIJHOWG6yZMvNn7m1Xmi8s1set6KJjP9AR3TjtUy+h53Gk8ovwbDgNFNM6TJYg9rHDpV0NU
	sHi7p8MV3OtWbCO/HTaBcy6mn1cNylSDg1kX1XvnpbOhxbtSu1dX6vWvredquRZUeYB2RDRBEUljB
	muHNqeHnAXFcOeZgnVww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1jNl-0004Qo-A4; Wed, 12 Feb 2020 04:12:13 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1jNd-0004Jf-08
 for kexec@lists.infradead.org; Wed, 12 Feb 2020 04:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581480720;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cyOBn1Bc4gTrmbHf4X4OguWHw58yiKAtK4j2RaA+ma0=;
 b=SCnbwJS4cPSvUrYmyQba6mNr8yQISt9fR8djn/PxR4fhaglmvtdRlzgMVo1DvuxphiDICT
 BpGPq0BkY5ROgOdMl/sX63TEWPB1LodhncmiKSsNZAln+Rji0pV3z33qaZYb31u2F4rZtW
 9EhipFbLHl7Q79RU0UNiy399oJmCfsM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-StZJKM0UPmSB1RNdt3G7Pw-1; Tue, 11 Feb 2020 23:11:56 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39D458017CC;
 Wed, 12 Feb 2020 04:11:54 +0000 (UTC)
Received: from [10.72.8.20] (ovpn-8-20.pek2.redhat.com [10.72.8.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 164145DA7B;
 Wed, 12 Feb 2020 04:11:45 +0000 (UTC)
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
From: piliu <piliu@redhat.com>
Message-ID: <0b743d83-d874-a093-82d1-e6d3d8bc47e0@redhat.com>
Date: Wed, 12 Feb 2020 12:11:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <cca47a31-6e05-2812-65a1-832621992553@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: StZJKM0UPmSB1RNdt3G7Pw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_201205_180128_D7973BB3 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

CgpPbiAwMi8wNi8yMDIwIDExOjQ2IEFNLCBwaWxpdSB3cm90ZToKPiAKPiAKPiBPbiAwMi8wNS8y
MDIwIDA1OjE4IEFNLCBIQUdJTyBLQVpVSElUTyjokKnlsL7jgIDkuIDku4EpIHdyb3RlOgo+Pj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDAy
OjI0OjE3UE0gKzA4MDAsIHBpbGl1IHdyb3RlOgo+Pj4+IEhpLAo+Pj4+Cj4+Pj4gU29ycnkgdG8g
cmVwbHkgbGF0ZSBkdWUgdG8gYSBsb25nIGZlc3RpdmFsLgo+Pj4+Cj4+Pj4gSSBoYXZlIHRlc3Rl
ZCB0aGlzIHBhdGNoIGFnYWluc3QgdjQuMTUgYW5kIGxhdGVzdCBrZXJuZWwgd2l0aCBzbWFsbAo+
Pj4+IG1vZGlmaWNhdGlvbiB0byBtZWV0IHRoZSBzaXR1YXRpb24gd2UgZGlzY3Vzc2VkIGhlcmUu
IEJvdGggd29yayBmaW5lLgo+Pj4+Cj4+Pj4gVGhlIGJlbG93IGlzIHRoZSBtb2RpZmljYXRpb24g
b2YgdHdvIGtlcm5lbAo+Pj4+Cj4+Pj4gdGVzdDEuIGxhdGVzdCBrZXJuZWwgd2l0aCB0d28gZXh0
cmEgbW9kaWZpY2F0aW9uIHRvIGV4cG9zZSB0aGUgcHJvYmxlbQo+Pj4+IC0xLjEgcmV2ZXJ0cyBj
b21taXQgMWY1MDM0NDNlN2RmOGRjODM2NjYwOGI0ZDgxMGNlMmQ2NjY5ODI3Ywo+Pj4+IChtbS9z
cGFyc2UuYzogcmVzZXQgc2VjdGlvbidzIG1lbV9tYXAgd2hlbiBmdWxseSBkZWFjdGl2YXRlZCks
IHRoaXMKPj4+PiBjb21taXQgd29yayBhcm91bmQgdGhpcyBidWcKPj4+PiAtMS4yLiByZXZlcnRz
IGNvbW1pdCBhMGIxMjgwMzY4ZDFlOTFhYjcyZjg0OWVmMDk1YjRmMDdhMzliYmYxICgia2R1bXA6
Cj4+Pj4gd3JpdGUgY29ycmVjdCBhZGRyZXNzIG9mIG1lbV9zZWN0aW9uIGludG8gdm1jb3JlaW5m
byIpLiBUaGlzIHdpbGwgY3JlYXRlCj4+Pj4gYSBidWdneSBzaXR1YXRpb24gYXMgd2UgZGlzY3Vz
c2VkIGhlcmUuCj4+Pj4gLTEuMy4gZml4IGJ1aWxkaW5nIGJ1ZyBkdWUgdG8gcmV2ZXJ0Cj4+Pj4g
YTBiMTI4MDM2OGQxZTkxYWI3MmY4NDllZjA5NWI0ZjA3YTM5YmJmMQo+Pj4+Cj4+Pj4gdGVzdDIu
IHY0LjE1LCB3aGljaCBpbmNsdWRlIGJvdGggY29tbWl0IDgzZTNjNDg3MjlkOSBhbmQgYTBiMTI4
MDM2OGQxLgo+Pj4+IC0yLjEuIHJldmVydCBjb21taXQgYTBiMTI4MDM2OGQxZTkxYWI3MmY4NDll
ZjA5NWI0ZjA3YTM5YmJmMSAoImtkdW1wOgo+Pj4+IHdyaXRlIGNvcnJlY3QgYWRkcmVzcyBvZiBt
ZW1fc2VjdGlvbiBpbnRvIHZtY29yZWluZm8iKQo+Pj4+Cj4+Pj4gU28gSSBjYW4gbm90IHNlZSBh
bnkgcHJvYmxlbSB3aXRoIG15IHBhdGNoLgo+Pj4+IE1heWJlIEkgbWlzdW5kZXJzdGFuZCB0aGUg
ZGlzY3Vzc2lvbiwgYnV0IEkgY2FuIG5vdCBzZWUgbXkgb3JpZ2luYWwKPj4+PiBwYXRjaCB3aWxs
IGJyZWFrIHRoZSBrZXJuZWwgd2hpY2ggaGF2ZSA4M2UzYzQ4NzI5ZDkgYnV0IG5vdCBhMGIxMjgw
MzY4ZDEuCj4+Pj4KPj4+PiBUaGFua3MsCj4+Pj4gUGluZ2Zhbgo+Pj4+Cj4+Pgo+Pj4gWW91IGFs
c28gbmVlZCB0byB0ZXN0IHRoZSBjYXNlIHdoZXJlIDgzZTNjNDg3MjlkOSBpcyBub3QgcHJlc2Vu
dCBhdCBhbGwuIENhbgo+Pj4geW91IHRlc3Qgb24gYSA0LjQga2VybmVsLCBmb3IgZXhhbXBsZT8g
QXMgZmFyIGFzIEkgdW5kZXJzdGFuZCwgYSB2YW5pbGxhIDQuNAo+Pj4ga2VybmVsIHdvdWxkIG5v
dCBiZSBkdW1wYWJsZSB3aXRoIHlvdXIgcGF0Y2guCj4+Cj4+IEFzIGZhciBhcyBJJ3ZlIHRlc3Rl
ZCB0aGlzIHBhdGNoIHdpdGggU1BBUlNFTUVNX0VYVFJFTUUgdm1jb3JlcyBiZWxvdywgaXQncyBP
SzoKPj4gICAtIDUxIHZtY29yZXMgb2YgdmFuaWxsYSBrZXJuZWxzIChlYWNoIGZyb20gMi42LjM2
IHRocm91Z2ggNS41KSBvbiBoYW5kCj4+ICAgLSBvbmUgbW9yZSB2YW5pbGxhIDQuNC4wIGtlcm5l
bCB3aXRoIGEgZGlmZmVyZW50IGNvbmZpZyBmcm9tIHRoZSBhYm92ZQo+Pgo+PiBTbyBhcHBhcmVu
dGx5IG5vdCBhbGwgdmFuaWxsYSA0LjQga2VybmVscyBhcmUgYWZmZWN0ZWQgYnkgdGhlIHBhdGNo
Lgo+Pgo+IFNvcnJ5LCBkdWUgdG8gdG91Y2ggaGFyZHdhcmUgcmVzb3VyY2UgaW4gb3VyIGxhYiwg
SSBjYW4gbm90IGhhdmUgYSB0ZXN0Cj4gb24gdjQuNCBvbiBhIHN5c3RlbSB3aXRoIGhvdHBsdWcg
bWVtb3J5IHlldC4gSSBzdGlsbCB0cnkgdG8gZmluZCBzb21lCj4gcmVzb3VyY2UuCj4gCj4gQnV0
IGZyb20gdGhlIGxvZ2ljIG9mIHRoaXMgcGF0Y2gsIGl0IGp1c3QgZG9lcyB0aGUgZm9sbG93aW5n
IGNoYW5nZXM6Cj4gLTEuIEFmdGVyIG1lbW9yeSBob3QtcmVtb3ZlZCwgZWl0aGVyIG1lbV9zZWN0
aW9uLnNlY3Rpb25fbWVtX21hcCA9IE5VTEwKPiBvciBtZW1fc2VjdGlvbi5zZWN0aW9uX21lbV9t
YXAgd2l0aG91dCBTRUNUSU9OX01BUktFRF9QUkVTRU5ULCB3ZSB3aWxsCj4gaGF2ZSBtZW1fbWFw
c1tzZWN0aW9uX25yXSA9IG1lbV9tYXAgPSBOT1RfTUVNTUFQX0FERFIsIHNvIGxhdGVyIGl0IHdp
bGwKPiBiZSBza2lwcGVkLgo+IC0yLiBJZiBub3QgcG9wdWxhdGVkLCBtZW1fc2VjdGlvbi5zZWN0
aW9uX21lbV9tYXAgPSBOVUxMLiBJdCBjYW4gZm9sbG93Cj4gdGhlIHNhbWUgaGFuZGxpbmcgb2Yg
aG90LXJlbW92ZWQsIGFuZCBiZSBza2lwcGVkIGR1cmluZyBwYXJzaW5nLgo+IAo+IEFuZCBpbiB2
NC40IHNwYXJzZV9yZW1vdmVfb25lX3NlY3Rpb24oKSBqdXN0IGFzc2lnbnMgbXMtPnNlY3Rpb25f
bWVtX21hcAo+ID0gMCwgd2hpY2ggY2FuIG5vdCBiZSB2aW9sYXRlZCBieSB0aGUgYWJvdmUgY2hh
bmdlcy4KTGFzdCBuaWdodCwgSSBnb3QgYSBtYWNoaW5lIHRvIHRlc3QgdGhpcyBzY2VuZS4gQWZ0
ZXIgYXBwbHlpbmcgbXkgcGF0Y2gKbWFrZWR1bXBmaWxlIGNhbiBzdGlsbCB3b3JrIHdpdGggdjQu
NCBrZXJuZWwuCgpUaGFua3MsClBpbmdmYW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVj
Cg==
