Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABBDE118C
	for <lists+kexec@lfdr.de>; Wed, 23 Oct 2019 07:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdarWkrmTQKYItpdW/7Es5WM8nX1zklYvJhQpdIxY4k=; b=p6weEVwPppX+Of
	AN87AiyrDxvkzvvY8wXjy4+hAi3y51XShkmeTo4JhMNYrBYcibuKuZU891uhm2Skm2qKhxRCs41bV
	AxpUTPoLwhd1AHtHhANZrzbnbU2LIpgoCAfyvPsm8wJC2DTIlOsOAvuYNepjRCQQVPygMuzjudwPx
	mcDxjnBmqOh+8jWDrleoLYo8Cn3uVxfjD8x0cRllRHqNB1iXe6U5b9MoKBqpagk4O8d4fJ4L9J/sW
	iEf2rxtP7jMZjvoXVNjeA9Ib6uQ3aE5l8WfPQsPhMckLDqLYMNVxQ1n+vTYDtKviRipd1qp28FhEC
	ChqkMzw/NNWm7gZh90xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN97s-0000q2-Jq; Wed, 23 Oct 2019 05:24:04 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN97o-0000pQ-7L
 for kexec@lists.infradead.org; Wed, 23 Oct 2019 05:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571808238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4JTRDEZOr8Z+dEGVRNplOCYtI8SYRnqHdIVrIZ8f01Y=;
 b=W4xuXUKI5AyWUGd5CZL3ue00ciKfsWXovoLyBkNXiO9YkWkLkkaoCYfhyJYN1SDCDqbPa0
 v5ka79L4vPuEMSGqdC+ZtrvfctT7RYsaY/yMW4CjTlcy5zKXDeqP4KwGT/XWmBMtMwC4Qe
 vvOQnglcVtOT7eOKSyU2xDXO0DTn6Kw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-ip4noSxtPGGBEgUWUIRgNQ-1; Wed, 23 Oct 2019 01:23:54 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F56B800D57;
 Wed, 23 Oct 2019 05:23:52 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BF2160BE1;
 Wed, 23 Oct 2019 05:23:36 +0000 (UTC)
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: Borislav Petkov <bp@alien8.de>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-2-lijiang@redhat.com> <20191022083015.GB31700@zn.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <0e657965-6f97-84ce-e51d-42d4978c4d88@redhat.com>
Date: Wed, 23 Oct 2019 13:23:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191022083015.GB31700@zn.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: ip4noSxtPGGBEgUWUIRgNQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_222400_333761_81657D2B 
X-CRM114-Status: GOOD (  28.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 mingo@redhat.com, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDIy5pelIDE2OjMwLCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IFRodSwgT2N0IDE3LCAyMDE5IGF0IDA1OjQzOjQ1UE0gKzA4MDAsIExpYW5ibyBKaWFuZyB3cm90
ZToKPj4gQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MjA0NzkzCj4gClRoYW5rcyBmb3IgeW91ciBjb21tZW50LgoKPiBQdXQgdGhhdCBhcyBhIExp
bms6IGJlbG93Lgo+IApMb29rcyBiZXR0ZXIuIE9LLgoKPj4gS2R1bXAga2VybmVsIHdpbGwgcmV1
c2UgdGhlIGZpcnN0IDY0MGsgcmVnaW9uIGJlY2F1c2Ugb2Ygc29tZSByZWFzb25zLAo+IAo+IHMv
IG9mIHNvbWUgcmVhc29ucy8vCj4gCj4+IGZvciBleGFtcGxlOiB0aGUgdHJhbXBsaW5lIGFuZCBj
b252ZW50aW9uYWwgUEMgc3lzdGVtIEJJT1MgcmVnaW9uIG1heQo+IAo+IHNwZWxsY2hlY2s6IHMv
dHJhbXBsaW5lL3RyYW1wb2xpbmUvCj4gCj4gSSBzZWUgdHdvIG1vcmUgdHlwb3MgaW4gaGVyZSBh
bmQgaWYgeW91IGhhZCBhIHNwZWxsY2hlY2tlciBlbmFibGVkIGluCj4geW91ciBlZGl0b3Igd2hl
cmUgeW91IHdyaXRlIHRoZSBjb21taXQgbWVzc2FnZSwgeW91J2xsIHNlZSB0aGVtIHRvby4KPiBQ
bGVhc2UgdXNlIG9uZS4KPiAKR29vZCBwb2ludC4gSSBqdXN0IHRyaWVkIHRvIGVuYWJsZSB0aGUg
c3BlbGxjaGVja2VyIGluIHRoZSB2aW0gYW5kIG5vdyBpdApoYXMgd29ya2VkIHdlbGwuIFRoYW5r
cy4gOi0pIAoKPj4gcmVxdWlyZSB0byBhbGxvY2F0ZSBtZW1vcnkgaW4gdGhpcyBhcmVhLiBPYnZp
b3VzbHksIGtkdW1wIGtlcm5lbCB3aWxsCj4+IGFsc28gb3ZlcndyaXRlIHRoZSBmaXJzdCA2NDBr
IHJlZ2lvbiwKPiAKPiBXZWxsLCBpdCBpcyBub3Qgb2J2aW91cyB0byBtZS4gUGxlYXNlIGJlIG1v
cmUgc3BlY2lmaWM6IHdoeSB3b3VsZCB0aGUKPiBrZHVtcCBrZXJuZWwgZG8gdGhhdD8KPiAKS2R1
bXAga2VybmVsIHdpbGwgcmV1c2UgdGhlIGZpcnN0IDY0MGsgcmVnaW9uIGJlY2F1c2UgdGhlIHJl
YWwgbW9kZQp0cmFtcG9saW5lIGhhcyB0byB3b3JrIGluIHRoaXMgYXJlYS4gV2hlbiB0aGUgdm1j
b3JlIGlzIGR1bXBlZCwgdGhlCm9sZCBtZW1vcnkgaW4gdGhpcyBhcmVhIG1heSBiZSBhY2Nlc3Nl
ZCwgdGhlcmVmb3JlLCBrZXJuZWwgaGFzIHRvCmNvcHkgdGhlIGNvbnRlbnRzIG9mIHRoZSBmaXJz
dCA2NDBrIGFyZWEgdG8gYSBiYWNrdXAgcmVnaW9uIHNvIHRoYXQKa2R1bXAga2VybmVsIGNhbiBy
ZWFkIHRoZSBvbGQgbWVtb3J5IGZyb20gdGhlIGJhY2t1cCBhcmVhIG9mIHRoZQpmaXJzdCA2NDBr
IGFyZWEsIHdoaWNoIGlzIGRvbmUgaW4gdGhlIHB1cmdhdG9yeSgpLgoKPj4gdGhlcmVmb3JlLCBr
ZXJuZWwgaGFzIHRvIGNvcHkKPj4gdGhlIGNvbnRlbnRzIG9mIHRoZSBmaXJzdCA2NDBrIGFyZWEg
dG8gYSBiYWNrdXAgYXJlYSwgd2hpY2ggaXMgZG9uZSBpbgo+PiBwdXJnYXRvcnkoKSwgYmVjYXVz
ZSB2bWNvcmUgbWF5IG5lZWQgdGhlIG9sZCBtZW1vcnkuIFdoZW4gdm1jb3JlIGlzCj4+IGR1bXBl
ZCwga2R1bXAga2VybmVsIHdpbGwgcmVhZCB0aGUgb2xkIG1lbW9yeSBmcm9tIHRoZSBiYWNrdXAg
YXJlYSBvZgo+PiB0aGUgZmlyc3QgNjQwayBhcmVhLgo+Pgo+PiBCYXNpY2FsbHksIHRoZSBtYWlu
IHJlYXNvbiBzaG91bGQgYmUgY2xlYXIsIGtlcm5lbCBkb2VzIG5vdCBjb3JyZWN0bHkKPj4gaGFu
ZGxlIHRoZSBmaXJzdCA2NDBrIHJlZ2lvbiB3aGVuIFNNRSBpcyBhY3RpdmUsCj4gCj4gSWYgeW91
IG1lbnRpb24gdGhlIGFjdHVhbCByZWFzb24gaGVyZSwgdGhhdCBzZW50ZW5jZSB3b3VsZCBiZSBj
bGVhcmVyOgo+IAo+ICJXaGVuIFNNRSBpcyBlbmFibGVkIGluIHRoZSBmaXJzdCBrZXJuZWwsIHRo
ZSBrZHVtcCBrZXJuZWwgbXVzdCBhY2Nlc3MKPiB0aGUgZmlyc3Qga2VybmVsJ3MgbWVtb3J5IHdp
dGggdGhlIGVuY3J5cHRpb24gYml0IHNldC4iCj4gCj4gU29tZXRoaW5nIGxpa2UgdGhhdC4gCj4g
Ckxvb2tzIGdvb2QuCgo+PiB3aGljaCBjYXVzZXMgdGhhdAo+PiBrZXJuZWwgZG9lcyBub3QgcHJv
cGVybHkgY29weSB0aGVzZSBvbGQgbWVtb3J5IHRvIHRoZSBiYWNrdXAgYXJlYSBpbgo+PiBwdXJn
YXRvcnkoKS4gVGhlcmVmb3JlLCBrZHVtcCBrZXJuZWwgcmVhZHMgb3V0IHRoZSBpbmNvcnJlY3Qg
Y29udGVudHMKPiAKPiBzL2luY29ycmVjdC9lbmNyeXB0ZWQvCj4gCkV4YWN0bHkuCgo+PiBmcm9t
IHRoZSBiYWNrdXAgYXJlYSB3aGVuIGR1bXBpbmcgdm1jb3JlLiBGaW5hbGx5LCB0aGUgcGhlbm9t
ZW5vbiBpcwo+IAo+IHBoZW5vbWVub24/Cj4gCkZpbmFsbHksIGl0IGNhdXNlZCB0aGUgZm9sbG93
aW5nIGVycm9ycy4KCj4+IGFzIGZvbGxvdzoKPj4KPj4gW3Jvb3QgbGludXhdJCBjcmFzaCB2bWxp
bnV4IC92YXIvY3Jhc2gvMTI3LjAuMC4xLTIwMTktMDktMTktMDhcOjMxXDoyNy92bWNvcmUKPj4g
V0FSTklORzoga2VybmVsIHJlbG9jYXRlZCBbMjQwTUJdOiBwYXRjaGluZyA5NzExMCBnZGIgbWlu
aW1hbF9zeW1ib2wgdmFsdWVzCj4+Cj4+ICAgICAgIEtFUk5FTDogL3Zhci9jcmFzaC8xMjcuMC4w
LjEtMjAxOS0wOS0xOS0wODozMToyNy92bWxpbnV4Cj4+ICAgICBEVU1QRklMRTogL3Zhci9jcmFz
aC8xMjcuMC4wLjEtMjAxOS0wOS0xOS0wODozMToyNy92bWNvcmUgIFtQQVJUSUFMIERVTVBdCj4+
ICAgICAgICAgQ1BVUzogMTI4Cj4+ICAgICAgICAgREFURTogVGh1IFNlcCAxOSAwODozMToxOCAy
MDE5Cj4+ICAgICAgIFVQVElNRTogMDA6MDE6MjEKPj4gTE9BRCBBVkVSQUdFOiAwLjE2LCAwLjA3
LCAwLjAyCj4+ICAgICAgICBUQVNLUzogMTM0Mwo+PiAgICAgTk9ERU5BTUU6IGFtZC1ldGhhbm9s
Cj4+ICAgICAgUkVMRUFTRTogNS4zLjAtcmM3Kwo+PiAgICAgIFZFUlNJT046ICM0IFNNUCBUaHUg
U2VwIDE5IDA4OjE0OjAwIEVEVCAyMDE5Cj4+ICAgICAgTUFDSElORTogeDg2XzY0ICAoMjE5NSBN
aHopCj4+ICAgICAgIE1FTU9SWTogMTI3LjkgR0IKPj4gICAgICAgIFBBTklDOiAiS2VybmVsIHBh
bmljIC0gbm90IHN5bmNpbmc6IHN5c3JxIHRyaWdnZXJlZCBjcmFzaCIKPj4gICAgICAgICAgUElE
OiA5Nzg5Cj4+ICAgICAgQ09NTUFORDogImJhc2giCj4+ICAgICAgICAgVEFTSzogImZmZmY4OTcx
MTg5NGFlODAgIFtUSFJFQURfSU5GTzogZmZmZjg5NzExODk0YWU4MF0iCj4+ICAgICAgICAgIENQ
VTogODMKPj4gICAgICAgIFNUQVRFOiBUQVNLX1JVTk5JTkcgKFBBTklDKQo+Pgo+PiBjcmFzaD4g
a21lbSAtc3xncmVwIC1pIGludmFsaWQKPj4ga21lbTogZG1hLWttYWxsb2MtNTEyOiBzbGFiOmZm
ZmZkNzc2ODAwMDFjMDAgaW52YWxpZCBmcmVlcG9pbnRlcjphNjA4NmFjMDk5ZjBjNWE0Cj4+IGtt
ZW06IGRtYS1rbWFsbG9jLTUxMjogc2xhYjpmZmZmZDc3NjgwMDAxYzAwIGludmFsaWQgZnJlZXBv
aW50ZXI6YTYwODZhYzA5OWYwYzVhNAo+PiBjcmFzaD4KPiAKPiBJIGZhaWwgdG8gc2VlIHdoYXQg
dGhhdCdzIHRyeWluZyB0byB0ZWxsIG1lPyBZb3UgaGF2ZSBpbnZhbGlkIHBvaW50ZXJzPwo+IApZ
ZXMsIHdoZW4gcGFyc2luZyB0aGUgdm1jb3JlIHZpYSBjcmFzaCB0b29sLCBpdCBvY2N1cnMgdGhl
IGFib3ZlIGVycm9ycywKdGhlIGNyYXNoIHRvb2wgZ2V0cyBpbnZhbGlkIHBvaW50ZXJzLiAKCj4+
IEJUVzogSSBhbHNvIHRyaWVkIHRvIGZpeCB0aGUgYWJvdmUgcHJvYmxlbSBpbiBwdXJnYXRvcnko
KSwgYnV0IHRoZXJlCj4+IGFyZSB0b28gbWFueSByZXN0cmljdHMgaW4gcHVyZ2F0b3J5KCkgY29u
dGV4dCwgZm9yIGV4YW1wbGU6IGkgY2FuJ3QKPj4gYWxsb2NhdGUgbmV3IG1lbW9yeSB0byBjcmVh
dGUgdGhlIGlkZW50aXR5IG1hcHBpbmcgcGFnZSB0YWJsZSBmb3IgU01FCj4+IHNpdHVhdGlvbi4K
PiAKPiBUaGlzIHBhcmFncmFwaCBiZWxvbmdzIHVuZGVyIHRoZSAiLS0tIiBsaW5lIGJlbG93Lgo+
IApPSy4gVGhhbmtzLgoKPj4gQ3VycmVudGx5LCB0aGVyZSBhcmUgdHdvIHBsYWNlcyB3aGVyZSB0
aGUgZmlyc3QgNjQwayBhcmVhIGlzIG5lZWRlZCwKPj4gdGhlIGZpcnN0IG9uZSBpcyBpbiB0aGUg
ZmluZF90cmFtcG9saW5lX3BsYWNlbWVudCgpLCBhbm90aGVyIG9uZSBpcwo+PiBpbiB0aGUgcmVz
ZXJ2ZV9yZWFsX21vZGUoKSwgYW5kIHRoZWlyIGNvbnRlbnQgZG9lc24ndCBtYXR0ZXIuCj4+Cj4+
IFRvIGF2b2lkIHRoZSBhYm92ZSBlcnJvciwgd2hlbiB0aGUgY3Jhc2hrZXJuZWwga2VybmVsIGNv
bW1hbmQgbGluZQo+PiBvcHRpb24gaXMgc3BlY2lmaWVkLCBsZXRzIHJlc2VydmUgdGhlIHJlbWFp
bmluZyBsb3cgMU1pQiBtZW1vcnkoCj4+IGFmdGVyIHJlc2VydmluZyByZWFsIG1vZGUgbWVtcm95
KSBzbyB0aGF0IHRoZSBhbGxvY2F0ZWQgbWVtb3J5IGRvZXMKPj4gbm90IGZhbGwgaW50byB0aGUg
bG93IDFNaUIgYXJlYSwgd2hpY2ggbWFrZXMgdXMgbm90IHRvIGNvcHkgdGhlIGZpcnN0Cj4+IDY0
MGsgY29udGVudCB0byBhIGJhY2t1cCByZWdpb24gaW4gcHVyZ2F0b3J5KCkuIFRoaXMgaW5kaWNh
dGVzIHRoYXQKPj4gaXQgZG9lcyBub3QgbmVlZCB0byBiZSBpbmNsdWRlZCBpbiBjcmFzaCBkdW1w
cyBvciB1c2VkIGZvciBhbnl0aGluZwo+PiBleGVjZXB0IHRoZSBwcm9jZXNzb3IgdHJhbXBvbGlu
ZXMgdGhhdCBtdXN0IGxpdmUgaW4gdGhlIGxvdyAxTWlCLgo+Pgo+PiBJbiBhZGRpdGlvbiwgYWxz
byBuZWVkIHRvIGNsZWFuIGFsbCB0aGUgY29kZSByZWxhdGVkIHRvIHRoZSBiYWNrdXAKPj4gcmVn
aW9uIGxhdGVyLgo+IAo+IERpdHRvLgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBMaWFuYm8gSmlhbmcg
PGxpamlhbmdAcmVkaGF0LmNvbT4KPj4gLS0tCj4+ICBhcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMg
fCAxMSArKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L3JlYWxtb2RlL2luaXQuYyBiL2FyY2gveDg2L3JlYWxt
b2RlL2luaXQuYwo+PiBpbmRleCA3ZGNlMzljOGMwMzQuLjFmMDQ5MjgzMGYyYyAxMDA2NDQKPj4g
LS0tIGEvYXJjaC94ODYvcmVhbG1vZGUvaW5pdC5jCj4+ICsrKyBiL2FyY2gveDg2L3JlYWxtb2Rl
L2luaXQuYwo+PiBAQCAtMzQsNiArMzQsMTcgQEAgdm9pZCBfX2luaXQgcmVzZXJ2ZV9yZWFsX21v
ZGUodm9pZCkKPj4gIAo+PiAgCW1lbWJsb2NrX3Jlc2VydmUobWVtLCBzaXplKTsKPj4gIAlzZXRf
cmVhbF9tb2RlX21lbShtZW0pOwo+PiArCj4+ICsjaWZkZWYgQ09ORklHX0tFWEVDX0NPUkUKPj4g
KwkvKgo+PiArCSAqIFdoZW4gdGhlIGNyYXNoa2VybmVsIG9wdGlvbiBpcyBzcGVjaWZpZWQsIG9u
bHkgdXNlIHRoZSBsb3cKPj4gKwkgKiAxTWlCIGZvciB0aGUgcmVhbCBtb2RlIHRyYW1wb2xpbmUu
Cj4+ICsJICovCj4+ICsJaWYgKHN0cnN0cihib290X2NvbW1hbmRfbGluZSwgImNyYXNoa2VybmVs
PSIpKSB7Cj4+ICsJCW1lbWJsb2NrX3Jlc2VydmUoMCwgMTw8MjApOwo+PiArCQlwcl9pbmZvKCJS
ZXNlcnZpbmcgdGhlIGxvdyAxTWlCIG9mIG1lbW9yeSBmb3IgY3Jhc2hrZXJuZWxcbiIpOwo+PiAr
CX0KPj4gKyNlbmRpZiAvKiBDT05GSUdfS0VYRUNfQ09SRSAqLwo+IAo+IFRoaXMgaWZkZWZmZXJ5
IG5lZWRzIHRvIGJlIGEgZnVuY3Rpb24gaW4ga2VybmVsL2tleGVjX2NvcmUuYyB3aGljaCBpcwo+
IGNhbGxlZCBieSByZXNlcnZlX3JlYWxfbW9kZSgpLCBpbnN0ZWFkLgo+IApHb29kIHVuZGVyc3Rh
bmRpbmcuIEkgd2lsbCB0cnkgdG8gaW1wcm92ZSBpdCBsYXRlci4KClRoYW5rcy4KTGlhbmJvCj4g
VGh4Lgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
