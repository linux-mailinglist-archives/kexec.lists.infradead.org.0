Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F811515E5
	for <lists+kexec@lfdr.de>; Tue,  4 Feb 2020 07:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hm4DsRSqXh2Ibru6SEJ62Qt2whZjkpfKau+o9GzhMvw=; b=j/Oy/dNOgzx/r/
	FSlE611yYeVpE/t3B1Rm+f7l57R0PGTTx1VhdYki56CpFvTwhcV3YwHXyJKK52JA6iQdrC7n08Nt+
	ajskmP2Vfm+GxDOXkMG9VGEBkADFeCauGAyisNmW5H3FUbMGN+sHUtaPjG9Bh266XyEK3IlBt1E4E
	RB9TSYHxA+mvH6CMMOBlzeIze/dzL+Bm6KfkjjQyyloydXqXIrLSRensvmy3MOuT6HlEvOv/j8sKC
	UmsM/ph75nw1WrxD5QkQwOis1EsyHGO5xBoz8BnB0ZYmfnUK2yS9nNciS8I50UV9O6gy6ALPeFssk
	0jDneaRHONH4tlajulcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyrdc-000574-Mx; Tue, 04 Feb 2020 06:24:44 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyrdY-00055q-Fn
 for kexec@lists.infradead.org; Tue, 04 Feb 2020 06:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580797477;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GasOFGT2oNTMAbM/zE4hpC8TIRsE2UiAgMKzvPaFCjM=;
 b=b6lN3IXJXfM6600XhmHUQ3zNt6NyXQ2xk/QV6bSkfw0kj3f8z4QNItChaykaSoVYZBMr54
 sExDyrhBAtrRhS+ozjuE3lMokX8ePooMZXmyvvemnd6I619QhTKhUxXn9wudAftCUpwZvQ
 7jivzp3xsOxHY8ma47glLpDr4RMjNHA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-dDeEbcwSM4ufC8wid0469g-1; Tue, 04 Feb 2020 01:24:33 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D4468014CC;
 Tue,  4 Feb 2020 06:24:31 +0000 (UTC)
Received: from [10.72.8.20] (ovpn-8-20.pek2.redhat.com [10.72.8.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 96B588068E;
 Tue,  4 Feb 2020 06:24:23 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
To: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>,
 =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5cd8e190-8be6-41cd-c43a-c38043c14b3f@redhat.com>
Date: Tue, 4 Feb 2020 14:24:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200128193302.GC4080@calabresa>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: dDeEbcwSM4ufC8wid0469g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_222440_604063_05B622E0 
X-CRM114-Status: GOOD (  30.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGksCgpTb3JyeSB0byByZXBseSBsYXRlIGR1ZSB0byBhIGxvbmcgZmVzdGl2YWwuCgpJIGhhdmUg
dGVzdGVkIHRoaXMgcGF0Y2ggYWdhaW5zdCB2NC4xNSBhbmQgbGF0ZXN0IGtlcm5lbCB3aXRoIHNt
YWxsCm1vZGlmaWNhdGlvbiB0byBtZWV0IHRoZSBzaXR1YXRpb24gd2UgZGlzY3Vzc2VkIGhlcmUu
IEJvdGggd29yayBmaW5lLgoKVGhlIGJlbG93IGlzIHRoZSBtb2RpZmljYXRpb24gb2YgdHdvIGtl
cm5lbAoKdGVzdDEuIGxhdGVzdCBrZXJuZWwgd2l0aCB0d28gZXh0cmEgbW9kaWZpY2F0aW9uIHRv
IGV4cG9zZSB0aGUgcHJvYmxlbQotMS4xIHJldmVydHMgY29tbWl0IDFmNTAzNDQzZTdkZjhkYzgz
NjY2MDhiNGQ4MTBjZTJkNjY2OTgyN2MKKG1tL3NwYXJzZS5jOiByZXNldCBzZWN0aW9uJ3MgbWVt
X21hcCB3aGVuIGZ1bGx5IGRlYWN0aXZhdGVkKSwgdGhpcwpjb21taXQgd29yayBhcm91bmQgdGhp
cyBidWcKLTEuMi4gcmV2ZXJ0cyBjb21taXQgYTBiMTI4MDM2OGQxZTkxYWI3MmY4NDllZjA5NWI0
ZjA3YTM5YmJmMSAoImtkdW1wOgp3cml0ZSBjb3JyZWN0IGFkZHJlc3Mgb2YgbWVtX3NlY3Rpb24g
aW50byB2bWNvcmVpbmZvIikuIFRoaXMgd2lsbCBjcmVhdGUKYSBidWdneSBzaXR1YXRpb24gYXMg
d2UgZGlzY3Vzc2VkIGhlcmUuCi0xLjMuIGZpeCBidWlsZGluZyBidWcgZHVlIHRvIHJldmVydAph
MGIxMjgwMzY4ZDFlOTFhYjcyZjg0OWVmMDk1YjRmMDdhMzliYmYxCgp0ZXN0Mi4gdjQuMTUsIHdo
aWNoIGluY2x1ZGUgYm90aCBjb21taXQgODNlM2M0ODcyOWQ5IGFuZCBhMGIxMjgwMzY4ZDEuCi0y
LjEuIHJldmVydCBjb21taXQgYTBiMTI4MDM2OGQxZTkxYWI3MmY4NDllZjA5NWI0ZjA3YTM5YmJm
MSAoImtkdW1wOgp3cml0ZSBjb3JyZWN0IGFkZHJlc3Mgb2YgbWVtX3NlY3Rpb24gaW50byB2bWNv
cmVpbmZvIikKClNvIEkgY2FuIG5vdCBzZWUgYW55IHByb2JsZW0gd2l0aCBteSBwYXRjaC4KTWF5
YmUgSSBtaXN1bmRlcnN0YW5kIHRoZSBkaXNjdXNzaW9uLCBidXQgSSBjYW4gbm90IHNlZSBteSBv
cmlnaW5hbApwYXRjaCB3aWxsIGJyZWFrIHRoZSBrZXJuZWwgd2hpY2ggaGF2ZSA4M2UzYzQ4NzI5
ZDkgYnV0IG5vdCBhMGIxMjgwMzY4ZDEuCgpUaGFua3MsClBpbmdmYW4KCk9uIDAxLzI5LzIwMjAg
MDM6MzMgQU0sIFRoYWRldSBMaW1hIGRlIFNvdXphIENhc2NhcmRvIHdyb3RlOgo+IE9uIFR1ZSwg
SmFuIDI4LCAyMDIwIGF0IDA1OjAzOjEyUE0gKzAwMDAsIEhBR0lPIEtBWlVISVRPKOiQqeWwviDk
uIDku4EpIHdyb3RlOgo+PiBIaSBDYXNjYXJkbywKPj4KPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4+PiBPbiBNb24sIEphbiAyNywgMjAyMCBhdCAwMjowNDo1NFBNIC0wMzAwLCBUaGFk
ZXUgTGltYSBkZSBTb3V6YSBDYXNjYXJkbyB3cm90ZToKPj4+PiBTb3JyeSBmb3IgdGFraW5nIHRv
byBsb25nIHRvIHJlc3BvbmQsIGFzIEkgd2FzIG9uIHZhY2F0aW9uLgo+Pj4+Cj4+Pj4gVGhlIGtl
cm5lbHMgdGhhdCBoYWQgY29tbWl0IDgzZTNjNDg3MjlkOSwgYnV0IG5vdCBjb21taXQgYTBiMTI4
MDM2OGQxLCBhcmUKPj4+PiBub3Qgc3VwcG9ydGVkIGFueW1vcmUuIEluIGEgd2F5IHRoYXQgaXQn
cyBldmVuIGhhcmQgZm9yIG1lIHRvIHRlc3QgdGhlbS4KPj4+Pgo+Pj4+IEhvd2V2ZXIsIEkgbWFu
YWdlZCB0byB0ZXN0IGl0LCBhbmQgdGhvc2UgdHdvIGxpbmVzIGFyZSBkZWZpbml0aXZlbHkgbmVl
ZGVkCj4+Pj4gdG8gZHVtcCBhIFZNIHJ1bm5pbmcgc3VjaCBhIGtlcm5lbC4gSXMgcmVtb3Zpbmcg
dGhlbSByZWFsbHkgbmVlZGVkIHRvIGZpeAo+Pj4+IHRoaXMgaXNzdWU/Cj4+Pj4KPj4+PiBPdGhl
cndpc2UsIEkgd291bGQgcmF0aGVyIGtlZXAgdGhlbS4KPj4+Pgo+Pj4+IFRoYW5rcy4KPj4+PiBD
YXNjYXJkby4KPj4+Cj4+PiBCeSB0aGUgd2F5LCBJIHdhcyB0b28gZmFzdCBpbiBzZW5kaW5nIHRo
aXMuIFdlIHJlYWxseSBuZWVkIHRvIGtlZXAgdGhvc2UgbGluZXMKPj4+IGFzIG1ha2VkdW1wZmls
ZSB3aWxsIGZhaWwgdG8gZHVtcCBhIDQuNCBrZXJuZWwgd2l0aCB0aGlzIHBhdGNoIGFzIGlzLgo+
Pgo+PiBJcyB0aGF0IFVidW50dSA0LjQga2VybmVsIHdoaWNoIGhhcyA4M2UzYzQ4NzI5ZDkgYW5k
IG5vdCBhMGIxMjgwMzY4ZDE/Cj4+IENvdWxkIHlvdSBlbGFib3JhdGUgb24gaG93IGl0IGZhaWxz
Pwo+IAo+IE5vLCBpdCBkb2Vzbid0IGhhdmUgZWl0aGVyLCBzbyBteSBndWVzcyBpcyBpdCB3b3Vs
ZCBmYWlsIG9uIHVwc3RyZWFtIDQuNCBhcwo+IHdlbGwsIHNvIGFueXRoaW5nIHRoYXQgZG9lc24n
dCBoYXZlIDgzZTNjNDg3MjlkOS4KPiAKPiBUaGF0J3Mgd2hhdCBJIGdldCBvbiB0aGF0IDQuNCBr
ZXJuZWwgKDQuNC4wLTE3MS1nZW5lcmljKToKPiAKPiAjIC4vbWFrZWR1bXBmaWxlIC9wcm9jL3Zt
Y29yZSAuLi9kdW1wCj4gZ2V0X21lbV9zZWN0aW9uOiBDb3VsZCBub3QgdmFsaWRhdGUgbWVtX3Nl
Y3Rpb24uCj4gZ2V0X21tX3NwYXJzZW1lbTogQ2FuJ3QgZ2V0IHRoZSBhZGRyZXNzIG9mIG1lbV9z
ZWN0aW9uLgo+IAo+IG1ha2VkdW1wZmlsZSBGYWlsZWQuCj4gIwo+IAo+IFNvLCBub3csIEkgaGF2
ZSBhIGJldHRlciBncmFzcCBvZiB0aGUgd2hvbGUgbG9naWMsIGFuZCB1bmRlcnN0YW5kIHdoeSBp
dCBmYWlscwo+IHdpdGggdGhpcyBwYXRjaC4KPiAKPiBTbywgd2UgbmVlZCB0byBlaXRoZXIgaW50
ZXJwcmV0IHRoZSBtZW1fc2VjdGlvbiBhcyBhIHBvaW50ZXIgdG8gdGhlIGFycmF5IG9mIGEKPiBw
b2ludGVyIHRvIHRoZSBwb2ludGVyIHRvIHRoZSBhcnJheS4gVGhlIG9ubHkgY2FzZSB0aGUgc2Vj
b25kIG9wdGlvbiBpcyB2YWxpZAo+IGlzIHdoZW4gc3BhcnNlX2V4dHJlbWUgaXMgb24sIHNvIHdl
IGRvbid0IGV2ZW4gbmVlZCB0byBjaGVjayB0aGUgc2Vjb25kIGNhc2UKPiB3aGVuIGl0J3Mgb2Zm
Lgo+IAo+IFRoZW4sIHdlIGNoZWNrIHRoYXQgaW50ZXJwcmV0aW5nIGl0IGVpdGhlciB3YXkgaXMg
dmFsaWQuIElmIGl0J3MgdmFsaWQgaW4gYm90aAo+IGludGVycHJldGF0aW9ucywgd2UgY2FuJ3Qg
ZGVjaWRlIHdoaWNoIHRvIHVzZSwgYW5kIHdpbGwgZmFpbC4gU28gZmFyLCB3ZQo+IGhhdmVuJ3Qg
c2VlbiBhbnkgY2FzZSBpbiB0aGUgZmllbGQgd2hlcmUgdGhhdCB3b3VsZCBhY2NpZGVudGFsbHkg
aGFwcGVuLiBCdXQgaW4KPiBjYXNlIGl0IGRvZXMsIHdlIHNob3VsZCByYXRoZXIgZmFpbCB0byBk
dW1wIGFuZCBmYWxsYmFjayB0byBjb3B5aW5nLCB0aGFuCj4gY3JlYXRpbmcgYSBib2d1cyBjb21w
cmVzc2VkIGR1bXAuCj4gCj4gV2hlbiB0aGlzIHBhdGNoIGlzIGFwcGxpZWQsIGEga2VybmVsIHdo
aWNoIGRvZXMgbm90IGhhdmUgODNlM2M0ODcyOWQ5LCBhbmQKPiB0aHVzLCBoYXMgbWVtX3NlY3Rp
b24gYXMgYSBkaXJlY3QgcG9pbnRlciB0byB0aGUgYXJyYXksIGl0IHNvIGhhcHBlbnMgdGhhdCB3
ZQo+IGRvbid0IGRldGVjdCB0aGUgcG9pbnRlciB0byBwb2ludGVyIHRvIHRoZSBhcnJheSBjYXNl
IGFzIGludmFsaWQsIHRodXMgZmFpbGluZwo+IHRvIGR1bXAuCj4gCj4gVGhlIHdheSB3ZSB2YWxp
ZGF0ZSBpcyB0aGF0IHRoZSBtZW1fbWFwcyBzaG91bGQgZWl0aGVyIGhhdmUgdGhlIFBSRVNFTlQg
Yml0IG9yCj4gYmUgTlVMTC4gTm93LCB0aGF0IGFzc3VtcHRpb24gbWF5IGJlIGludmFsaWQsIGFu
ZCB3ZSB3b3VsZCBuZWVkIHRvIGRvIHRoZQo+IHZhbGlkYXRpb24gc29tZSBvdGhlciB3YXkuIEkg
Y2FuIHRlc3QgdGhlIGNhc2VzIHdoZXJlIHRoYXQgYXNzdW1wdGlvbiBpcwo+IGludmFsaWQgaW4g
YSA0LjQga2VybmVsIGFuZCBzZWUgaG93IHRvIGZpeCB0aGlzIGluIGEgc2F0aXNmYWN0b3J5IHdh
eS4KPiAKPiBHb2luZyB0aHJvdWdoIHRoZSBjb2RlIG9uY2UgYWdhaW4sIEkgZG9uJ3Qgc2VlIGhv
dyB0aGUgc2Vjb25kIHNlY3Rpb24gb2YgdGhlCj4gcGF0Y2ggd291bGQgYmUgY29ycmVjdCBieSBp
dHNlbGYgdG9vLiBJIHdpbGwgdGhpbmsgaXQgdGhyb3VnaCBhIGxpdHRsZSBtb3JlIGFuZAo+IHNl
ZSBpZiBJIGNhbiBjb21lIHVwIHdpdGggYSBzb2x1dGlvbi4KPiAKPiBSZWdhcmRzLgo+IENhc2Nh
cmRvLgo+IAo+Pgo+PiBJJ20gdGhpbmtpbmcgdGhhdCBQaW5nZmFuJ3MgdGhvdWdodCBtYXkgaGVs
cDoKPj4+PiBJIHRoaW5rIGl0IGNvdWxkIGJlIGlmL2Vsc2UsIG5vIG5lZWQgdG8gY2FsbCB0d2lj
ZS4KPj4KPj4gVGhhbmtzLAo+PiBLYXp1Cj4+Cj4+Pgo+Pj4gQ2FzY2FyZG8uCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBs
aXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
