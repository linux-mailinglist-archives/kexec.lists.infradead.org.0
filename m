Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6054FCE0F7
	for <lists+kexec@lfdr.de>; Mon,  7 Oct 2019 13:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7Zaq/sFbJFD0i0U3OCUDQTpZupqdxQ+RL7c6JSQ8xQ=; b=CzUei3cRTSY/Fo
	89d7vSuf/ChGF748ymk5TYvBpPmEZpjRK1IBAMatk/8d3gwBVU4233S7rk3X7t+MmVcC7w0v/FIbj
	S0vFlt8IEUZuTb7+aTz02nmkBzEVtwRk6ISzdAyujmaN84ewfks9koNkRQU0Q7SxG+emMwfKliN/3
	YxNCsHXw/CFxLYxrWzc+8oMMoib3mG26iFYIbWamAcK7kXdcD6jNEE8735hX1W7QoaCSyK/IXtNLs
	bCgzeWAP5sHtadag8isJUz1PhSlgQ4BSiOeTShG7LiLJ5LZInIQucF5PQs4cmUBGwMZIGA/XAlzqS
	Aida/VAAO3uEThKX/5QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRao-00076X-28; Mon, 07 Oct 2019 11:54:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRak-00075s-0w
 for kexec@lists.infradead.org; Mon, 07 Oct 2019 11:54:20 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 39A447BDAB;
 Mon,  7 Oct 2019 11:54:17 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-87.pek2.redhat.com [10.72.12.87])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EBF14600C1;
 Mon,  7 Oct 2019 11:54:01 +0000 (UTC)
Subject: Re: [PATCH v2] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
To: Dave Young <dyoung@redhat.com>
References: <20191007070844.15935-1-lijiang@redhat.com>
 <20191007093338.GA4710@dhcp-128-65.nay.redhat.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <e179c616-f427-769f-aa5b-058c63040015@redhat.com>
Date: Mon, 7 Oct 2019 19:53:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191007093338.GA4710@dhcp-128-65.nay.redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 07 Oct 2019 11:54:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_045418_103315_2AC4F2E2 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 tglx@linutronix.de, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDA35pelIDE3OjMzLCBEYXZlIFlvdW5nIOWGmemBkzoKPiBIaSBMaWFu
Ym8sCj4gT24gMTAvMDcvMTkgYXQgMDM6MDhwbSwgTGlhbmJvIEppYW5nIHdyb3RlOgo+PiBCdWd6
aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDQ3OTMK
Pj4KPj4gS2R1bXAga2VybmVsIHdpbGwgcmV1c2UgdGhlIGZpcnN0IDY0MGsgcmVnaW9uIGJlY2F1
c2Ugb2Ygc29tZSByZWFzb25zLAo+PiBmb3IgZXhhbXBsZTogdGhlIHRyYW1wbGluZSBhbmQgY29u
dmVudGlvbmFsIFBDIHN5c3RlbSBCSU9TIHJlZ2lvbiBtYXkKPj4gcmVxdWlyZSB0byBhbGxvY2F0
ZSBtZW1vcnkgaW4gdGhpcyBhcmVhLiBPYnZpb3VzbHksIGtkdW1wIGtlcm5lbCB3aWxsCj4+IGFs
c28gb3ZlcndyaXRlIHRoZSBmaXJzdCA2NDBrIHJlZ2lvbiwgdGhlcmVmb3JlLCBrZXJuZWwgaGFz
IHRvIGNvcHkKPj4gdGhlIGNvbnRlbnRzIG9mIHRoZSBmaXJzdCA2NDBrIGFyZWEgdG8gYSBiYWNr
dXAgYXJlYSwgd2hpY2ggaXMgZG9uZSBpbgo+PiBwdXJnYXRvcnkoKSwgYmVjYXVzZSB2bWNvcmUg
bWF5IG5lZWQgdGhlIG9sZCBtZW1vcnkuIFdoZW4gdm1jb3JlIGlzCj4+IGR1bXBlZCwga2R1bXAg
a2VybmVsIHdpbGwgcmVhZCB0aGUgb2xkIG1lbW9yeSBmcm9tIHRoZSBiYWNrdXAgYXJlYSBvZgo+
PiB0aGUgZmlyc3QgNjQwayBhcmVhLgo+Pgo+PiBCYXNpY2FsbHksIHRoZSBtYWluIHJlYXNvbiBz
aG91bGQgYmUgY2xlYXIsIGtlcm5lbCBkb2VzIG5vdCBjb3JyZWN0bHkKPj4gaGFuZGxlIHRoZSBm
aXJzdCA2NDBrIHJlZ2lvbiB3aGVuIFNNRSBpcyBhY3RpdmUsIHdoaWNoIGNhdXNlcyB0aGF0Cj4+
IGtlcm5lbCBkb2VzIG5vdCBwcm9wZXJseSBjb3B5IHRoZXNlIG9sZCBtZW1vcnkgdG8gdGhlIGJh
Y2t1cCBhcmVhIGluCj4+IHB1cmdhdG9yeSgpLiBUaGVyZWZvcmUsIGtkdW1wIGtlcm5lbCByZWFk
cyBvdXQgdGhlIGluY29ycmVjdCBjb250ZW50cwo+PiBmcm9tIHRoZSBiYWNrdXAgYXJlYSB3aGVu
IGR1bXBpbmcgdm1jb3JlLiBGaW5hbGx5LCB0aGUgcGhlbm9tZW5vbiBpcwo+PiBhcyBmb2xsb3c6
Cj4+Cj4+IFtyb290IGxpbnV4XSQgY3Jhc2ggdm1saW51eCAvdmFyL2NyYXNoLzEyNy4wLjAuMS0y
MDE5LTA5LTE5LTA4XDozMVw6Mjcvdm1jb3JlCj4+IFdBUk5JTkc6IGtlcm5lbCByZWxvY2F0ZWQg
WzI0ME1CXTogcGF0Y2hpbmcgOTcxMTAgZ2RiIG1pbmltYWxfc3ltYm9sIHZhbHVlcwo+Pgo+PiAg
ICAgICBLRVJORUw6IC92YXIvY3Jhc2gvMTI3LjAuMC4xLTIwMTktMDktMTktMDg6MzE6Mjcvdm1s
aW51eAo+PiAgICAgRFVNUEZJTEU6IC92YXIvY3Jhc2gvMTI3LjAuMC4xLTIwMTktMDktMTktMDg6
MzE6Mjcvdm1jb3JlICBbUEFSVElBTCBEVU1QXQo+PiAgICAgICAgIENQVVM6IDEyOAo+PiAgICAg
ICAgIERBVEU6IFRodSBTZXAgMTkgMDg6MzE6MTggMjAxOQo+PiAgICAgICBVUFRJTUU6IDAwOjAx
OjIxCj4+IExPQUQgQVZFUkFHRTogMC4xNiwgMC4wNywgMC4wMgo+PiAgICAgICAgVEFTS1M6IDEz
NDMKPj4gICAgIE5PREVOQU1FOiBhbWQtZXRoYW5vbAo+PiAgICAgIFJFTEVBU0U6IDUuMy4wLXJj
NysKPj4gICAgICBWRVJTSU9OOiAjNCBTTVAgVGh1IFNlcCAxOSAwODoxNDowMCBFRFQgMjAxOQo+
PiAgICAgIE1BQ0hJTkU6IHg4Nl82NCAgKDIxOTUgTWh6KQo+PiAgICAgICBNRU1PUlk6IDEyNy45
IEdCCj4+ICAgICAgICBQQU5JQzogIktlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBzeXNycSB0
cmlnZ2VyZWQgY3Jhc2giCj4+ICAgICAgICAgIFBJRDogOTc4OQo+PiAgICAgIENPTU1BTkQ6ICJi
YXNoIgo+PiAgICAgICAgIFRBU0s6ICJmZmZmODk3MTE4OTRhZTgwICBbVEhSRUFEX0lORk86IGZm
ZmY4OTcxMTg5NGFlODBdIgo+PiAgICAgICAgICBDUFU6IDgzCj4+ICAgICAgICBTVEFURTogVEFT
S19SVU5OSU5HIChQQU5JQykKPj4KPj4gY3Jhc2g+IGttZW0gLXN8Z3JlcCAtaSBpbnZhbGlkCj4+
IGttZW06IGRtYS1rbWFsbG9jLTUxMjogc2xhYjpmZmZmZDc3NjgwMDAxYzAwIGludmFsaWQgZnJl
ZXBvaW50ZXI6YTYwODZhYzA5OWYwYzVhNAo+PiBrbWVtOiBkbWEta21hbGxvYy01MTI6IHNsYWI6
ZmZmZmQ3NzY4MDAwMWMwMCBpbnZhbGlkIGZyZWVwb2ludGVyOmE2MDg2YWMwOTlmMGM1YTQKPj4g
Y3Jhc2g+Cj4+Cj4+IEJUVzogSSBhbHNvIHRyaWVkIHRvIGZpeCB0aGUgYWJvdmUgcHJvYmxlbSBp
biBwdXJnYXRvcnkoKSwgYnV0IHRoZXJlCj4+IGFyZSB0b28gbWFueSByZXN0cmljdHMgaW4gcHVy
Z2F0b3J5KCkgY29udGV4dCwgZm9yIGV4YW1wbGU6IGkgY2FuJ3QKPj4gYWxsb2NhdGUgbmV3IG1l
bW9yeSB0byBjcmVhdGUgdGhlIGlkZW50aXR5IG1hcHBpbmcgcGFnZSB0YWJsZSBmb3IgU01FCj4+
IHNpdHVhdGlvbi4KPj4KPj4gQ3VycmVudGx5LCB0aGVyZSBhcmUgdHdvIHBsYWNlcyB3aGVyZSB0
aGUgZmlyc3QgNjQwayBhcmVhIGlzIG5lZWRlZCwKPj4gdGhlIGZpcnN0IG9uZSBpcyBpbiB0aGUg
ZmluZF90cmFtcG9saW5lX3BsYWNlbWVudCgpLCBhbm90aGVyIG9uZSBpcwo+PiBpbiB0aGUgcmVz
ZXJ2ZV9yZWFsX21vZGUoKSwgYW5kIHRoZWlyIGNvbnRlbnQgZG9lc24ndCBtYXR0ZXIuIFRvIGF2
b2lkCj4+IHRoZSBhYm92ZSBlcnJvciwgbGV0cyBvY2N1cHkgdGhlIHJlbWFpbiBtZW1vcnkgb2Yg
dGhlIGZpcnN0IDY0MGsgcmVnaW9uCj4+IChleHBlY3QgZm9yIHRoZSB0cmFtcG9saW5lIGFuZCBy
ZWFsIG1vZGUpIHNvIHRoYXQgdGhlIGFsbG9jYXRlZCBtZW1vcnkKPj4gZG9lcyBub3QgZmFsbCBp
bnRvIHRoZSBmaXJzdCA2NDBrIGFyZWEgd2hlbiBTTUUgaXMgYWN0aXZlLCB3aGljaCBtYWtlcwo+
PiB1cyBub3QgdG8gd29ycnkgYWJvdXQgd2hldGhlciBrZXJuZWwgY2FuIGNvcnJlY3RseSBjb3B5
IHRoZSBjb250ZW50cyBvZgo+PiB0aGUgZmlyc3QgNjQwayBhcmVhIHRvIGEgYmFja3VwIHJlZ2lv
biBpbiB0aGUgcHVyZ2F0b3J5KCkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExpYW5ibyBKaWFuZyA8
bGlqaWFuZ0ByZWRoYXQuY29tPgo+PiAtLS0KPj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4gMS4gSW1w
cm92ZSBwYXRjaCBsb2cKPj4gMi4gQ2hhbmdlIHRoZSBjaGVja2luZyBjb25kaXRpb24gZnJvbSBz
bWVfYWN0aXZlKCkgdG8gc21lX2FjdGl2ZSgpCj4+ICAgICYmIHN0cnN0cihib290X2NvbW1hbmRf
bGluZSwgImNyYXNoa2VybmVsPSIpCj4+Cj4+ICBhcmNoL3g4Ni9rZXJuZWwvc2V0dXAuYyB8IDMg
KysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQg
YS9hcmNoL3g4Ni9rZXJuZWwvc2V0dXAuYyBiL2FyY2gveDg2L2tlcm5lbC9zZXR1cC5jCj4+IGlu
ZGV4IDc3ZWE5NmI3OTRiZC4uYmRiMWEwMmE4NGZkIDEwMDY0NAo+PiAtLS0gYS9hcmNoL3g4Ni9r
ZXJuZWwvc2V0dXAuYwo+PiArKysgYi9hcmNoL3g4Ni9rZXJuZWwvc2V0dXAuYwo+PiBAQCAtMTE0
OCw2ICsxMTQ4LDkgQEAgdm9pZCBfX2luaXQgc2V0dXBfYXJjaChjaGFyICoqY21kbGluZV9wKQo+
PiAgCj4+ICAJcmVzZXJ2ZV9yZWFsX21vZGUoKTsKPj4gIAo+PiArCWlmIChzbWVfYWN0aXZlKCkg
JiYgc3Ryc3RyKGJvb3RfY29tbWFuZF9saW5lLCAiY3Jhc2hrZXJuZWw9IikpCj4+ICsJCW1lbWJs
b2NrX3Jlc2VydmUoMCwgNjQwKjEwMjQpOwo+PiArCj4gCj4gU2VlbXMgeW91IG1pc3NlZCB0aGUg
Y29tbWVudCBhYm91dCAidW5jb25kaXRpb25hbGx5IGRvIGl0Iiwgb25seSBjaGVjawo+IGNyYXNo
a2VybmVsIHBhcmFtIGxvb2tzIGJldHRlci4KPiAKSWYgc28sIGl0IG1lYW5zIHRoYXQgY29weWlu
ZyB0aGUgZmlyc3QgNjQwayB0byBhIGJhY2t1cCByZWdpb24gaXMgbm8gbG9uZ2VyIG5lZWRlZCwg
YW5kCmkgc2hvdWxkIHBvc3QgYSBwYXRjaCBzZXJpZXMgdG8gcmVtb3ZlIHRoZSBjb3B5X2JhY2t1
cF9yZWdpb24oKS4gQW55IGlkZWE/Cgo+IEFsc28gSSBub3RpY2VkIHJlc2VydmVfY3Jhc2hrZXJu
ZWwgaXMgY2FsbGVkIGFmdGVyIGluaXRtZW1faW5pdCwgSSdtIG5vdAo+IHN1cmUgaWYgbWVtYmxv
Y2tfcmVzZXJ2ZSBpcyBnb29kIGVub3VnaCBpbiBlYXJseSBjb2RlIGJlZm9yZQo+IGluaXRtZW1f
aW5pdC4gCj4KVGhlIGZpcnN0IHplcm8gcGFnZSBhbmQgcmVhbCBtb2RlIGFyZSBhbHNvIHJlc2Vy
dmVkIGJlZm9yZSB0aGUgaW5pdG1lbV9pbml0KCksCmFuZCBzZWVtcyB0aGF0IHRoZXkgd29yayB3
ZWxsIHVudGlsIG5vdy4KClRoYW5rcy4KTGlhbmJvCgo+PiAgCXRyaW1fcGxhdGZvcm1fbWVtb3J5
X3JhbmdlcygpOwo+PiAgCXRyaW1fbG93X21lbW9yeV9yYW5nZSgpOwo+PiAgCj4+IC0tIAo+PiAy
LjE3LjEKPj4KPiAKPiBUaGFua3MKPiBEYXZlCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tl
eGVjCg==
