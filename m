Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A4ACC899
	for <lists+kexec@lfdr.de>; Sat,  5 Oct 2019 09:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3+uwk2HmfvqfcrWpUPwQVVIheOC9DSH2wNVclDnwm8=; b=hfzZTTGyYrjhvM
	23i8SLu6a2wYN3KCxq/HOduw+C6v3Fh54YgvaxyfbwH+79GTsQDiRNzhHhK1XkNUwC9TT3VNFkgb6
	/kge58mVH2ZEqEUytZ4KJKYaYnuEOphLmViA2/ck99TCCvGEuKeuCn6S1lC8LrFnFyUFSDXdG4JmL
	UcuakFHeOcGkbSdB6Cdud7aZASNah6PolZSfazP3uBfUlFpi+tHtZkmGmvXWKZkPsgExs938QzRcl
	XS1TmNawGOsR3We1mbwM099Tw9mbEvuYq8fkpm0PV4Q/tcoCLUQAEjOb2PLt7E0TuRQoaSG6PxdN/
	RoKu9qH2icNzlV4bm6jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGebE-0006JY-4Q; Sat, 05 Oct 2019 07:35:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGebA-0006In-MB
 for kexec@lists.infradead.org; Sat, 05 Oct 2019 07:35:30 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CB8A2C049E17;
 Sat,  5 Oct 2019 07:35:23 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-49.pek2.redhat.com [10.72.12.49])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A7605D9DC;
 Sat,  5 Oct 2019 07:35:12 +0000 (UTC)
Subject: Re: [PATCH] x86/kdump: Fix 'kmem -s' reported an invalid freepointer
 when SME was active
To: Baoquan He <bhe@redhat.com>, "Eric W. Biederman" <ebiederm@xmission.com>
References: <20190920035326.27212-1-lijiang@redhat.com>
 <20190927051518.GA13023@dhcp-128-65.nay.redhat.com>
 <87r241piqg.fsf@x220.int.ebiederm.org>
 <20190928000505.GJ31919@MiWiFi-R3L-srv>
 <875zldp2vj.fsf@x220.int.ebiederm.org> <20190928030910.GA5774@MiWiFi-R3L-srv>
 <87zhimks5j.fsf@x220.int.ebiederm.org>
 <20191001074012.GK31919@MiWiFi-R3L-srv>
From: lijiang <lijiang@redhat.com>
Message-ID: <7e97421d-d9a8-9d57-1aa0-406039f8421d@redhat.com>
Date: Sat, 5 Oct 2019 15:35:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191001074012.GK31919@MiWiFi-R3L-srv>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Sat, 05 Oct 2019 07:35:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_003528_761350_A57CF7F4 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, tglx@linutronix.de,
 Dave Young <dyoung@redhat.com>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDAx5pelIDE1OjQwLCBCYW9xdWFuIEhlIOWGmemBkzoKPiBPbiAwOS8z
MC8xOSBhdCAwNToxNGFtLCBFcmljIFcuIEJpZWRlcm1hbiB3cm90ZToKPj4gQmFvcXVhbiBIZSA8
YmhlQHJlZGhhdC5jb20+IHdyaXRlczoKPj4+PiBuZWVkcyBhIGxpdHRsZSBiZXR0ZXIgZGVzY3Jp
cHRpb24uICBJIGtub3cgaXQgaXMgbm90IGEgbG90IG9uIG1vZGVybgo+Pj4+IHN5c3RlbXMgYnV0
IHJlc2VydmluZyBhbiBleHRyYSAxTSBvZiBtZW1vcnkgdG8gYXZvaWQgaGF2aW5nIHRvIHNwZWNp
YWwKPj4+PiBjYXNlIGl0IGxhdGVyIHNlZW1zIGluIG5lZWQgb2YgY2FsbGluZyBvdXQuCj4+Pj4K
Pj4+PiBJIGhhdmUgYW4gb2xkIHN5c3RlbSBhcm91bmQgdGhhdCBJIHRoaW5rIHRoYXQgNjQwSyBp
cyBhYm91dCAyNSUgb2YKPj4+PiBtZW1vcnkuCj4+Pgo+Pj4gVW5kZXJzdG9vZC4gQmFzaWNhbGx5
IDY0MEsgaXMgd2FzdGVkIGluIHRoaXMgY2FzZS4gQnV0IHdlIG9ubHkgZG8gbGlrZQo+Pj4gdGhp
cyBpbiBTTUUgY2FzZSwgYSBjb25kaXRpb24gY2hlY2tpbmcgaXMgYWRkZWQuIEFuZCBzeXN0ZW0g
d2l0aCBTTUUgaXMKPj4+IHByZXR0eSBuZXcgbW9kZWwsIGl0IG1heSBub3QgaW1wYWN0IHRoZSBv
bGQgc3lzdGVtLgo+Pgo+PiBUaGUgY29uZGl0aW9uYWwgcmVhbGx5IHNob3VsZCBiZSBiYXNlZCBv
biBpZiB3ZSBhcmUgcmVzZXJ2aW5nIG1lbW9yeQo+PiBmb3IgYSBrZHVtcCBrZXJuZWwuICBBS0Eg
aWYgY3Jhc2hfa2VybmVsPVhYWCBpcyBzcGVjaWZpZWQgb24gdGhlIGtlcm5lbAo+PiBjb21tYW5k
IGxpbmUuCj4+Cj4+IEF0IHdoaWNoIHBvaW50IEkgdGhpbmsgaXQgd291bGQgYmUgdmVyeSByZWFz
b25hYmxlIHRvIHVuY29uZGl0aW9uYWxseQo+PiByZXNlcnZlIHRoZSBsb3cgNjQwaywgYW5kIG1h
a2UgdGhlIHdob2xlIHRoaW5nIGEgbm9uLWlzc3VlLiAgVGhpcyB3b3VsZAo+PiBhbGxvdyB0aGUg
a2R1bXAgY29kZSB0byBqdXN0IG5vdCBkbyBhbnl0aGluZyBzcGVjaWFsIGZvciBhbnkgb2YgdGhl
Cj4+IHdlaXJkIHNwZWNpYWwgY2FzZS4KPj4KPj4gSXQgaXNuJ3QgcGVyZmVjdCBiZWNhdXNlIHdl
IG5lZWQgYSBwYWdlIG9yIHNvIHVzZWQgaW4gdGhlIGZpcnN0IGtlcm5lbAo+PiBmb3IgYm9vdHN0
cmFwcGluZyB0aGUgc2Vjb25kYXJ5IGNwdXMsIGJ1dCB0aGF0IHNlZW1zIGxpa2UgdGhlIGxlYXN0
IG9mCj4+IGV2aWxzLiAgRXNwZWNpYWxseSBhcyBubyBvbmUgd2lsbCBETUEgdG8gdGhhdCBtZW1v
cnkuCj4+Cj4+IFNvIHBsZWFzZSBsZXQncyBqdXN0IGNoYW5nZSB3aGF0IG1lbW9yeSB3ZSByZXNl
cnZlIHdoZW4gY3Jhc2hfa2VybmVsIGlzCj4+IHNwZWNpZmllZC4KPiAKPiBZZXMsIG1ha2VzIHNl
bnNlLCB0aGFua3MgZm9yIHBvaW50aW5nIGl0IG91dC4KPiAKClNvcnJ5IGZvciB0aGUgZGVsYXkg
YW5kIHRoYW5rcyBmb3IgeW91ciBjb21tZW50LCBFcmljLCBCYW9xdWFuIGFuZCBEYXZlIFlvdW5n
LgoKSSB3aWxsIGltcHJvdmUgcGF0Y2ggbG9nIGFuZCBhZGQgdGhlIGV4dHJhIGNvbmRpdGlvbiBj
cmFzaF9rZXJuZWwuIEkgd2lsbCBwb3N0CnYyIGxhdGVyLgoKVGhhbmtzLgpMaWFuYm8KCj4+Cj4+
Pj4gSG93IHdlIGludGVyYWN0IHdpdGggQklPUyB0YWJsZXMgaW4gdGhlIGZpcnN0IDY0MGsgbmVl
ZHMgc29tZQo+Pj4+IGV4cGxhbmF0aW9uLiAgQm90aCBpbiB0aGUgZmlyc3Qga2VybmVsIGFuZCBp
biB0aGUgY3Jhc2gga2VybmVsLgo+Pj4KPj4+IFllcywgdG90YWxseSBhZ3JlZS4KPj4+Cj4+PiBU
aG9zZSBCSU9TIHRhYmxlcyBoYXZlIGJlZW4gcmVzZXJ2ZWQgYXMgZTgyMCByZXNlcnZlZCByZWdp
b25zIGFuZCB3aWxsCj4+PiBiZSBwYXNzZWQgdG8ga2R1bXAga2VybmVsIGZvciByZXVzaW5nLiBN
ZW1ibG9jayByZXNlcnZlZCA2NDBLIGRvZXNuJ3QKPj4+IG1lYW4gaXQgd2lsbCBjb3ZlciB0aGUg
d2hvbGUgWzAsIDY0MEspIHJlZ2lvbiwgaXQgb25seSBzZWFyY2hlcyBmb3IKPj4+IGF2YWlsYWJs
ZSBzeXN0ZW0gUkFNIGZyb20gbWVtYmxvY2sgYWxsb2NhdG9yLgo+Pgo+PiBDYXJlZnVsIHdpdGgg
dGhhdCBhc3N1bXB0aW9uLiAgTXkgbWVtb3J5IGlzIHRoYXQgdGhlIGU4MjAgbWVtb3J5IG1hcAo+
PiBmcmVxdWVudGx5IGZhaWxzIHRvIGNvdmVyIGFyZWFzIGxpa2UgdGhlIHJlYWwgbW9kZSBpbnRl
cnJ1cHQgZGVzY3JpcHRvcgo+PiB0YWJsZSBhdCBhZGRyZXNzIDAuCj4gCj4gT0ssIHdpbGwgdGhp
bmsgbW9yZSBhYm91dCB0aGlzLiBUaGFua3MuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tl
eGVjCg==
