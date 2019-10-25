Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2B3E4111
	for <lists+kexec@lfdr.de>; Fri, 25 Oct 2019 03:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fw08lJg2Fyav65Ped5bxat10Aa7nzYMs9AF2npju6Ck=; b=gP8C6DJ11zS6Yj
	hsJkh1ERLBcfcK1ILuPsdBhnvnXlkgpu+1j8IHFMpqnmW/nEnd7b/F0ZqbDhROcYcYrPxQJT+wgJ2
	WAghoYnIvClLAPqWI+41yZJMJeAhSZKEVChIcXP5jQe2iQpHkVsvpVvgCDmjJcPE1teU9YZsaquTC
	V2gLeNbDiOvapweJfcU9irJGiwleZCxyhhTpC6+8epu+koLkGUG/UPY7aVRyRwQo5OIht/Ac3ZQ7J
	4PCmn7A11+4cDbB7/lUU33Lwo79OHtLHxrmw+XxhNlfT1RJbgb1j47qBsLK61OrSikT6hCki8P7lj
	N5eORTnUjnppmJ/opOIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNoSH-0006rH-LL; Fri, 25 Oct 2019 01:31:53 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNoSC-0006qL-LL
 for kexec@lists.infradead.org; Fri, 25 Oct 2019 01:31:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571967106;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M40XR0T9BKbXD14zie05WcoP5tWOnHL2zQPkemlNf7o=;
 b=dEhz5f3FF47RPJw9ulDuVTt+COlWRjzYUeE34VLMBMA9pthofSmJS/Srppd34pyikxq4fI
 7sMv2rMToMRB4xbN7nDkrh8QDI0nd1COJetUGZG2igC7Ux+6XDIKzffC7XuM4kKs4/9DNs
 jZva4Hs1Eumw8Uarfe4OEm1uPBrsC0g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-OONSmIk_NKq6Om9oMPq8mA-1; Thu, 24 Oct 2019 21:31:43 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33A9C1005500;
 Fri, 25 Oct 2019 01:31:41 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B4C6A5DA8D;
 Fri, 25 Oct 2019 01:31:26 +0000 (UTC)
Subject: Re: [PATCH 1/2 v5] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
From: lijiang <lijiang@redhat.com>
To: Simon Horman <horms@verge.net.au>, d.hatayama@fujitsu.com
References: <20191023141912.29110-1-lijiang@redhat.com>
 <20191023141912.29110-2-lijiang@redhat.com>
 <20191024100719.GC11441@verge.net.au>
 <4c1c4b78-23f0-a2b9-4be7-5bab0335f10a@redhat.com>
Message-ID: <6da13645-c5e9-6c95-1f2d-bede177f9863@redhat.com>
Date: Fri, 25 Oct 2019 09:31:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <4c1c4b78-23f0-a2b9-4be7-5bab0335f10a@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: OONSmIk_NKq6Om9oMPq8mA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_183148_830530_44C2796F 
X-CRM114-Status: GOOD (  28.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDI05pelIDE5OjMzLCBsaWppYW5nIOWGmemBkzoKPiDlnKggMjAxOeW5
tDEw5pyIMjTml6UgMTg6MDcsIFNpbW9uIEhvcm1hbiDlhpnpgZM6Cj4+IEhpIExpbmJvLAo+Pgo+
PiB0aGFua3MgZm9yIHlvdXIgcGF0Y2guCj4+Cj4+IE9uIFdlZCwgT2N0IDIzLCAyMDE5IGF0IDEw
OjE5OjExUE0gKzA4MDAsIExpYW5ibyBKaWFuZyB3cm90ZToKPj4+IEtkdW1wIGtlcm5lbCB3aWxs
IHJldXNlIHRoZSBmaXJzdCA2NDBrIHJlZ2lvbiBiZWNhdXNlIHRoZSByZWFsIG1vZGUKPj4+IHRy
YW1wb2xpbmUgaGFzIHRvIHdvcmsgaW4gdGhpcyBhcmVhLiBXaGVuIHRoZSB2bWNvcmUgaXMgZHVt
cGVkLCB0aGUKPj4+IG9sZCBtZW1vcnkgaW4gdGhpcyBhcmVhIG1heSBiZSBhY2Nlc3NlZCwgdGhl
cmVmb3JlLCBrZXJuZWwgaGFzIHRvCj4+PiBjb3B5IHRoZSBjb250ZW50cyBvZiB0aGUgZmlyc3Qg
NjQwayBhcmVhIHRvIGEgYmFja3VwIHJlZ2lvbiBzbyB0aGF0Cj4+PiBrZHVtcCBrZXJuZWwgY2Fu
IHJlYWQgdGhlIG9sZCBtZW1vcnkgZnJvbSB0aGUgYmFja3VwIGFyZWEgb2YgdGhlCj4+PiBmaXJz
dCA2NDBrIGFyZWEsIHdoaWNoIGlzIGRvbmUgaW4gdGhlIHB1cmdhdG9yeSgpLgo+Pj4KPj4+IEJ1
dCwgdGhlIGN1cnJlbnQgaGFuZGxpbmcgb2YgY29weWluZyB0aGUgZmlyc3QgNjQwayBhcmVhIHJ1
bnMgaW50bwo+Pj4gcHJvYmxlbXMgd2hlbiBTTUUgaXMgZW5hYmxlZCwga2VybmVsIGRvZXMgbm90
IHByb3Blcmx5IGNvcHkgdGhlc2UKPj4+IG9sZCBtZW1vcnkgdG8gdGhlIGJhY2t1cCBhcmVhIGlu
IHRoZSBwdXJnYXRvcnkoKSwgdGhlcmVieSwga2R1bXAKPj4+IGtlcm5lbCByZWFkcyBvdXQgdGhl
IGVuY3J5cHRlZCBjb250ZW50cywgYmVjYXVzZSB0aGUga2R1bXAga2VybmVsCj4+PiBtdXN0IGFj
Y2VzcyB0aGUgZmlyc3Qga2VybmVsJ3MgbWVtb3J5IHdpdGggdGhlIGVuY3J5cHRpb24gYml0IHNl
dAo+Pj4gd2hlbiBTTUUgaXMgZW5hYmxlZCBpbiB0aGUgZmlyc3Qga2VybmVsLiBQbGVhc2UgcmVm
ZXIgdG8gdGhpcyBsaW5rOgo+Pj4KPj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxhLmtlcm5l
bC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNDc5Mwo+Pj4KPj4+IEZpbmFsbHksIGl0IGNhdXNlcyB0
aGUgZm9sbG93aW5nIGVycm9ycywgYW5kIHRoZSBjcmFzaCB0b29sIGdldHMKPj4+IGludmFsaWQg
cG9pbnRlcnMgd2hlbiBwYXJzaW5nIHRoZSB2bWNvcmUuCj4+Pgo+Pj4gY3Jhc2g+IGttZW0gLXN8
Z3JlcCAtaSBpbnZhbGlkCj4+PiBrbWVtOiBkbWEta21hbGxvYy01MTI6IHNsYWI6ZmZmZmQ3NzY4
MDAwMWMwMCBpbnZhbGlkIGZyZWVwb2ludGVyOmE2MDg2YWMwOTlmMGM1YTQKPj4+IGttZW06IGRt
YS1rbWFsbG9jLTUxMjogc2xhYjpmZmZmZDc3NjgwMDAxYzAwIGludmFsaWQgZnJlZXBvaW50ZXI6
YTYwODZhYzA5OWYwYzVhNAo+Pj4gY3Jhc2g+Cj4+Pgo+Pj4gVG8gYXZvaWQgdGhlIGFib3ZlIGVy
cm9ycywgd2hlbiB0aGUgY3Jhc2hrZXJuZWwgb3B0aW9uIGlzIHNwZWNpZmllZCwKPj4+IGxldHMg
cmVzZXJ2ZSB0aGUgcmVtYWluaW5nIGxvdyAxTWlCIG1lbW9yeShhZnRlciByZXNlcnZpbmcgcmVh
bCBtb2RlCj4+PiBtZW1vcnkpIHNvIHRoYXQgdGhlIGFsbG9jYXRlZCBtZW1vcnkgZG9lcyBub3Qg
ZmFsbCBpbnRvIHRoZSBsb3cgMU1pQgo+Pj4gYXJlYSwgd2hpY2ggbWFrZXMgdXMgbm90IHRvIGNv
cHkgdGhlIGZpcnN0IDY0MGsgY29udGVudCB0byBhIGJhY2t1cAo+Pj4gcmVnaW9uIGluIHB1cmdh
dG9yeSgpLiBUaGlzIGluZGljYXRlcyB0aGF0IGl0IGRvZXMgbm90IG5lZWQgdG8gYmUKPj4+IGlu
Y2x1ZGVkIGluIGNyYXNoIGR1bXBzIG9yIHVzZWQgZm9yIGFueXRoaW5nIGV4Y2VwdCB0aGUgcHJv
Y2Vzc29yCj4+PiB0cmFtcG9saW5lcyB0aGF0IG11c3QgbGl2ZSBpbiB0aGUgbG93IDFNaUIuCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhhdC5jb20+Cj4+
PiAtLS0KPj4+IEJUVzpJIGFsc28gdHJpZWQgdG8gZml4IHRoZSBhYm92ZSBwcm9ibGVtIGluIHB1
cmdhdG9yeSgpLCBidXQgdGhlcmUKPj4+IGFyZSB0b28gbWFueSByZXN0cmljdHMgaW4gcHVyZ2F0
b3J5KCkgY29udGV4dCwgZm9yIGV4YW1wbGU6IGkgY2FuJ3QKPj4+IGFsbG9jYXRlIG5ldyBtZW1v
cnkgdG8gY3JlYXRlIHRoZSBpZGVudGl0eSBtYXBwaW5nIHBhZ2UgdGFibGUgZm9yCj4+PiBTTUUg
c2l0dWF0aW9uLgo+Pj4KPj4+IEN1cnJlbnRseSwgdGhlcmUgYXJlIHR3byBwbGFjZXMgd2hlcmUg
dGhlIGZpcnN0IDY0MGsgYXJlYSBpcyBuZWVkZWQsCj4+PiB0aGUgZmlyc3Qgb25lIGlzIGluIHRo
ZSBmaW5kX3RyYW1wb2xpbmVfcGxhY2VtZW50KCksIGFub3RoZXIgb25lIGlzCj4+PiBpbiB0aGUg
cmVzZXJ2ZV9yZWFsX21vZGUoKSwgYW5kIHRoZWlyIGNvbnRlbnQgZG9lc24ndCBtYXR0ZXIuCj4+
Pgo+Pj4gSW4gYWRkaXRpb24sIGFsc28gbmVlZCB0byBjbGVhbiBhbGwgdGhlIGNvZGUgcmVsYXRl
ZCB0byB0aGUgYmFja3VwCj4+PiByZWdpb24gbGF0ZXIuCj4+Pgo+Pj4gIGFyY2gveDg2L3JlYWxt
b2RlL2luaXQuYyB8ICAyICsrCj4+PiAgaW5jbHVkZS9saW51eC9rZXhlYy5oICAgIHwgIDIgKysK
Pj4+ICBrZXJuZWwva2V4ZWNfY29yZS5jICAgICAgfCAxMyArKysrKysrKysrKysrCj4+PiAgMyBm
aWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gv
eDg2L3JlYWxtb2RlL2luaXQuYyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYwo+Pj4gaW5kZXgg
N2RjZTM5YzhjMDM0Li4wNjRjYzc5YTAxNWQgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL3g4Ni9yZWFs
bW9kZS9pbml0LmMKPj4+ICsrKyBiL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYwo+Pj4gQEAgLTMs
NiArMyw3IEBACj4+PiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPj4+ICAjaW5jbHVkZSA8bGlu
dXgvbWVtYmxvY2suaD4KPj4+ICAjaW5jbHVkZSA8bGludXgvbWVtX2VuY3J5cHQuaD4KPj4+ICsj
aW5jbHVkZSA8bGludXgva2V4ZWMuaD4KPj4+ICAKPj4+ICAjaW5jbHVkZSA8YXNtL3NldF9tZW1v
cnkuaD4KPj4+ICAjaW5jbHVkZSA8YXNtL3BndGFibGUuaD4KPj4+IEBAIC0zNCw2ICszNSw3IEBA
IHZvaWQgX19pbml0IHJlc2VydmVfcmVhbF9tb2RlKHZvaWQpCj4+PiAgCj4+PiAgCW1lbWJsb2Nr
X3Jlc2VydmUobWVtLCBzaXplKTsKPj4+ICAJc2V0X3JlYWxfbW9kZV9tZW0obWVtKTsKPj4+ICsJ
a2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQigpOwo+Pj4gIH0KPj4+ICAKPj4+ICBzdGF0aWMgdm9pZCBf
X2luaXQgc2V0dXBfcmVhbF9tb2RlKHZvaWQpCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9rZXhlYy5oIGIvaW5jbHVkZS9saW51eC9rZXhlYy5oCj4+PiBpbmRleCAxNzc2ZWIyZTQzYTQu
LjMwYWNmMWQ3MzhiYyAxMDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUvbGludXgva2V4ZWMuaAo+Pj4g
KysrIGIvaW5jbHVkZS9saW51eC9rZXhlYy5oCj4+PiBAQCAtMzA2LDYgKzMwNiw3IEBAIGV4dGVy
biB2b2lkIF9fY3Jhc2hfa2V4ZWMoc3RydWN0IHB0X3JlZ3MgKik7Cj4+PiAgZXh0ZXJuIHZvaWQg
Y3Jhc2hfa2V4ZWMoc3RydWN0IHB0X3JlZ3MgKik7Cj4+PiAgaW50IGtleGVjX3Nob3VsZF9jcmFz
aChzdHJ1Y3QgdGFza19zdHJ1Y3QgKik7Cj4+PiAgaW50IGtleGVjX2NyYXNoX2xvYWRlZCh2b2lk
KTsKPj4+ICt2b2lkIF9faW5pdCBrZXhlY19yZXNlcnZlX2xvd18xTWlCKHZvaWQpOwo+Pj4gIHZv
aWQgY3Jhc2hfc2F2ZV9jcHUoc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIGludCBjcHUpOwo+Pj4gIGV4
dGVybiBpbnQga2ltYWdlX2NyYXNoX2NvcHlfdm1jb3JlaW5mbyhzdHJ1Y3Qga2ltYWdlICppbWFn
ZSk7Cj4+PiAgCj4+PiBAQCAtMzk3LDYgKzM5OCw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBfX2Ny
YXNoX2tleGVjKHN0cnVjdCBwdF9yZWdzICpyZWdzKSB7IH0KPj4+ICBzdGF0aWMgaW5saW5lIHZv
aWQgY3Jhc2hfa2V4ZWMoc3RydWN0IHB0X3JlZ3MgKnJlZ3MpIHsgfQo+Pj4gIHN0YXRpYyBpbmxp
bmUgaW50IGtleGVjX3Nob3VsZF9jcmFzaChzdHJ1Y3QgdGFza19zdHJ1Y3QgKnApIHsgcmV0dXJu
IDA7IH0KPj4+ICBzdGF0aWMgaW5saW5lIGludCBrZXhlY19jcmFzaF9sb2FkZWQodm9pZCkgeyBy
ZXR1cm4gMDsgfQo+Pj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBfX2luaXQga2V4ZWNfcmVzZXJ2ZV9s
b3dfMU1pQih2b2lkKSB7IH0KPj4+ICAjZGVmaW5lIGtleGVjX2luX3Byb2dyZXNzIGZhbHNlCj4+
PiAgI2VuZGlmIC8qIENPTkZJR19LRVhFQ19DT1JFICovCj4+PiAgCj4+PiBkaWZmIC0tZ2l0IGEv
a2VybmVsL2tleGVjX2NvcmUuYyBiL2tlcm5lbC9rZXhlY19jb3JlLmMKPj4+IGluZGV4IDE1ZDcw
YTkwYjUwZC4uNWJkODlmMWZlZTQyIDEwMDY0NAo+Pj4gLS0tIGEva2VybmVsL2tleGVjX2NvcmUu
Ywo+Pj4gKysrIGIva2VybmVsL2tleGVjX2NvcmUuYwo+Pj4gQEAgLTM3LDYgKzM3LDcgQEAKPj4+
ICAjaW5jbHVkZSA8bGludXgvY29tcGlsZXIuaD4KPj4+ICAjaW5jbHVkZSA8bGludXgvaHVnZXRs
Yi5oPgo+Pj4gICNpbmNsdWRlIDxsaW51eC9mcmFtZS5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9t
ZW1ibG9jay5oPgo+Pj4gIAo+Pj4gICNpbmNsdWRlIDxhc20vcGFnZS5oPgo+Pj4gICNpbmNsdWRl
IDxhc20vc2VjdGlvbnMuaD4KPj4+IEBAIC03MCw2ICs3MSwxOCBAQCBzdHJ1Y3QgcmVzb3VyY2Ug
Y3Jhc2hrX2xvd19yZXMgPSB7Cj4+PiAgCS5kZXNjICA9IElPUkVTX0RFU0NfQ1JBU0hfS0VSTkVM
Cj4+PiAgfTsKPj4+ICAKPj4+ICsvKgo+Pj4gKyAqIFdoZW4gdGhlIGNyYXNoa2VybmVsIG9wdGlv
biBpcyBzcGVjaWZpZWQsIG9ubHkgdXNlIHRoZSBsb3cKPj4+ICsgKiAxTWlCIGZvciB0aGUgcmVh
bCBtb2RlIHRyYW1wb2xpbmUuCj4+PiArICovCj4+PiArdm9pZCBfX2luaXQga2V4ZWNfcmVzZXJ2
ZV9sb3dfMU1pQih2b2lkKQo+Pj4gK3sKPj4+ICsJaWYgKHN0cnN0cihib290X2NvbW1hbmRfbGlu
ZSwgImNyYXNoa2VybmVsPSIpKSB7Cj4+Cj4+IENvdWxkIHlvdSBjb21tZW50IG9uIHRoZSBpc3N1
ZSBvZiB1c2luZyBzdHJzdHIgd2hpY2gKPj4gd2FzIHJhaXNlZCBieSBIYXRheWFtYS1zYW4gaW4g
cmVzcG9uc2UgdG8gYW4gZWFybGllciByZXZpc2lvbgo+PiBvZiB0aGlzIHBhdGNoPwo+Pgo+IAo+
IFRoYW5rIHlvdSwgU2ltb24gYW5kIEhhdGF5YW1hLXNhbi4gTGV0cyB0YWxrIGFib3V0IGl0IGhl
cmUuCj4gCj4+IHN0cnN0cigpIG1hdGNoZXMgZm9yIGV4YW1wbGUsIEFOWUVYVFJBQ0hBUkFDVEVS
U2NyYXNoa2VybmVsPUFOWUVYVFJBQ0hBUkFDVEVSUy4KPj4KPj4gSXMgaXQgZW5vdWdoIHRvIHVz
ZSBjbWRsaW5lX2ZpbmRfb3B0aW9uX2Jvb2woKT8KPj4KPiAKPiBUaGUgY21kbGluZV9maW5kX29w
dGlvbl9ib29sKCkgd2lsbCBmaW5kIGEgYm9vbGVhbiBvcHRpb24sIGJ1dCB0aGUgY3Jhc2hrZXJu
ZWwgb3B0aW9uCj4gaXMgbm90IGEgYm9vbGVhbiBvcHRpb24sIG1heWJlIGl0IGxvb2tzIG9kZC4g
U28sIHNob3VsZCB3ZSB1c2UgdGhlIGNtZGxpbmVfZmluZF9vcHRpb24oKQo+IGJldHRlcj8KPiAK
PiArI2luY2x1ZGUgPGFzbS9jbWRsaW5lLmg+Cj4gCj4gIHZvaWQgX19pbml0IGtleGVjX3Jlc2Vy
dmVfbG93XzFNaUIodm9pZCkKPiAgewo+IC0gICAgICAgaWYgKHN0cnN0cihib290X2NvbW1hbmRf
bGluZSwgImNyYXNoa2VybmVsPSIpKSB7Cj4gKyAgICAgICBjaGFyIGJ1ZmZlcls0XTsKPiArCj4g
KyAgICAgICBpZiAoY21kbGluZV9maW5kX29wdGlvbihib290X2NvbW1hbmRfbGluZSwgImNyYXNo
a2VybmVsPSIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBidWZmZXIsIHNpemVv
ZihidWZmZXIpKSkgewpNYXliZSBpdCBpcyBzaW1wbGVyIGFzIGZvbGxvdzoKCisgICAgICAgaWYg
KGNtZGxpbmVfZmluZF9vcHRpb24oYm9vdF9jb21tYW5kX2xpbmUsICJjcmFzaGtlcm5lbD0iLAor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEwsIDApKSB7CgpBbnkgdGhvdWdodHM/
CgpUaGFua3MKTGlhbmJvCj4gICAgICAgICAgICAgICAgIG1lbWJsb2NrX3Jlc2VydmUoMCwgMTw8
MjApOwo+ICAgICAgICAgICAgICAgICBwcl9pbmZvKCJSZXNlcnZpbmcgdGhlIGxvdyAxTWlCIG9m
IG1lbW9yeSBmb3IgY3Jhc2hrZXJuZWxcbiIpOwo+ICAgICAgICAgfQo+IAo+IEFuZCBoZXJlLCBu
byBuZWVkIHRvIHBhcnNlIHRoZSBhcmd1bWVudHMgb2YgY3Jhc2hrZXJuZWwoc29tZXRpbWVzLCB3
aGljaCBoYXMgYQo+IGNvbXBsaWNhdGVkIHN5bnRheCksIHNvIHRoZSBzaXplIG9mIGJ1ZmZlciBz
aG91bGQgYmUgZW5vdWdoLiBXaGF0J3MgeW91ciBvcGluaW9uPwo+IAo+IFRoYW5rcwo+IExpYW5i
bwo+IAo+PiBUaGFua3MgaW4gYWR2YW5jZSEKPj4KPj4+ICsJCW1lbWJsb2NrX3Jlc2VydmUoMCwg
MTw8MjApOwo+Pj4gKwkJcHJfaW5mbygiUmVzZXJ2aW5nIHRoZSBsb3cgMU1pQiBvZiBtZW1vcnkg
Zm9yIGNyYXNoa2VybmVsXG4iKTsKPj4+ICsJfQo+Pj4gK30KPj4+ICsKPj4+ICBpbnQga2V4ZWNf
c2hvdWxkX2NyYXNoKHN0cnVjdCB0YXNrX3N0cnVjdCAqcCkKPj4+ICB7Cj4+PiAgCS8qCj4+PiAt
LSAKPj4+IDIuMTcuMQo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4+PiBrZXhlY0BsaXN0cy5p
bmZyYWRlYWQub3JnCj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2tleGVjCj4+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
