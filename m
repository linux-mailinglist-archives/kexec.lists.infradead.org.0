Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E0CE304D
	for <lists+kexec@lfdr.de>; Thu, 24 Oct 2019 13:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGJuXV5OqPas4a2QfFLwY1+DcoYer9lqMjxekTZ1XLY=; b=TmPOrOULFXqd8J
	5663JqgxQLaWD+i7rPzbFmfMFkqdMdR42aegcMEmV72lHoKSPmNWIe674eUm/4Js7U2YNmKOuzrqF
	zbohSpVRJN4W/DNJvn1xcmAs/5/vr4RGMVSVe44Bpoy7b0m4JnPZG13mYPndCC+AiV1hsbVcDuHSp
	T1HUxyAQOdqTdl/8CqU7q4L+PRdFUe7K2LIsyJsc8ZtS8xQYbXl84y/++rSzOxlsPcl4FsXiqrq4q
	5WSxfxpENonoga4x5VPQpw/tDtQr7WkVGB8DYH7Nl+AQx+5dSKp+2ANyhuxygJxE2yBpfoADGt/en
	KscEd241kpZqAJNHFmRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbF0-0001Ld-9g; Thu, 24 Oct 2019 11:25:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbEv-0001Kj-1h
 for kexec@lists.infradead.org; Thu, 24 Oct 2019 11:25:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571916310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8MKoFzDg3DJ3NsR8hmQvSjHbpm2GQm//B3wDWM30Ly4=;
 b=TJaWAsI56cV+xpInwBpCWbN5/lACeBMEQU8wc1FFZ3Hrtwum1+QBs13qEOLRYv+YmFjUHN
 +9DtybhQVRwYG5wn8qSVMxoIPzTisBTv1B+ijAvbcT+Bxn4kdHpmv3zKQBTAoSsIQDehwF
 in6zu/VKJrbt4EN/bzJApdn7PFEzwFg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-dqYSstQ8PxqoM3JAkf4zTQ-1; Thu, 24 Oct 2019 07:25:06 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66B9E1005512;
 Thu, 24 Oct 2019 11:25:04 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-33.pek2.redhat.com [10.72.12.33])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D4C1D600C4;
 Thu, 24 Oct 2019 11:24:51 +0000 (UTC)
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-2-lijiang@redhat.com> <20191022083015.GB31700@zn.tnic>
 <75648e8d-4ef7-0537-618e-e4a57f0d3b9b@redhat.com>
 <OSBPR01MB4006F33096F5E0AB8B8E648D956A0@OSBPR01MB4006.jpnprd01.prod.outlook.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <d44b444f-d02b-cf47-30d9-2adfee877f15@redhat.com>
Date: Thu, 24 Oct 2019 19:24:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <OSBPR01MB4006F33096F5E0AB8B8E648D956A0@OSBPR01MB4006.jpnprd01.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: dqYSstQ8PxqoM3JAkf4zTQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_042513_168453_A396B9F4 
X-CRM114-Status: GOOD (  27.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: "jgross@suse.com" <jgross@suse.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 "bhe@redhat.com" <bhe@redhat.com>, "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dhowells@redhat.com" <dhowells@redhat.com>,
 "mingo@redhat.com" <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>,
 "hpa@zytor.com" <hpa@zytor.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDI05pelIDE2OjEzLCBkLmhhdGF5YW1hQGZ1aml0c3UuY29tIOWGmemB
kzoKPiBJIGRvbid0IGZpbmQgdGhlIGNvcnJlc3BvbmRpbmcgcGF0Y2ggaW4gdGhlIHY1IHBhdGNo
c2V0LCBzbyBJIGNvbW1lbnQgaGVyZS4KPiAKVGhhbmtzIGZvciB5b3VyIGNvbW1lbnQuCgo+PiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBsaW51eC1rZXJuZWwtb3duZXJAdmdl
ci5rZXJuZWwub3JnCj4+IFttYWlsdG86bGludXgta2VybmVsLW93bmVyQHZnZXIua2VybmVsLm9y
Z10gT24gQmVoYWxmIE9mIGxpamlhbmcKPj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIzLCAy
MDE5IDI6MzUgUE0KPj4gVG86IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgo+PiBDYzog
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgdGdseEBsaW51dHJvbml4LmRlOyBtaW5nb0By
ZWRoYXQuY29tOwo+PiBocGFAenl0b3IuY29tOyB4ODZAa2VybmVsLm9yZzsgYmhlQHJlZGhhdC5j
b207IGR5b3VuZ0ByZWRoYXQuY29tOwo+PiBqZ3Jvc3NAc3VzZS5jb207IGRob3dlbGxzQHJlZGhh
dC5jb207IFRob21hcy5MZW5kYWNreUBhbWQuY29tOwo+PiBlYmllZGVybUB4bWlzc2lvbi5jb207
IHZnb3lhbEByZWRoYXQuY29tOyBrZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggMS8zIHY0XSB4ODYva2R1bXA6IGFsd2F5cyByZXNlcnZlIHRoZSBsb3cgMU1p
QiB3aGVuIHRoZQo+PiBjcmFzaGtlcm5lbCBvcHRpb24gaXMgc3BlY2lmaWVkCj4+Cj4+IOWcqCAy
MDE55bm0MTDmnIgyMuaXpSAxNjozMCwgQm9yaXNsYXYgUGV0a292IOWGmemBkzoKPj4+IFRoaXMg
aWZkZWZmZXJ5IG5lZWRzIHRvIGJlIGEgZnVuY3Rpb24gaW4ga2VybmVsL2tleGVjX2NvcmUuYyB3
aGljaCBpcwo+Pj4gY2FsbGVkIGJ5IHJlc2VydmVfcmVhbF9tb2RlKCksIGluc3RlYWQuCj4+Cj4+
IFdvdWxkIHlvdSBtaW5kIGlmIGkgaW1wcm92ZSB0aGlzIHBhdGNoIGFzIGZvbGxvdz8gVGhhbmtz
Lgo+Pgo+PiBGcm9tIDU4MDRhYmVjNjIyNzk1ODVmMzc0ZDc4YWNlMTI1MDUwNWM0NGM2YjcgTW9u
IFNlcCAxNyAwMDowMDowMCAyMDAxCj4+IEZyb206IExpYW5ibyBKaWFuZyA8bGlqaWFuZ0ByZWRo
YXQuY29tPgo+PiBEYXRlOiBXZWQsIDIzIE9jdCAyMDE5IDExOjI3OjA0ICswODAwCj4+IFN1Ympl
Y3Q6IFtQQVRDSF0geDg2L2tkdW1wOiBhbHdheXMgcmVzZXJ2ZSB0aGUgbG93IDFNaUIgd2hlbiB0
aGUgY3Jhc2hrZXJuZWwKPj4gIG9wdGlvbiBpcyBzcGVjaWZpZWQKPj4KPj4gS2R1bXAga2VybmVs
IHdpbGwgcmV1c2UgdGhlIGZpcnN0IDY0MGsgcmVnaW9uIGJlY2F1c2UgdGhlIHJlYWwgbW9kZQo+
PiB0cmFtcG9saW5lIGhhcyB0byB3b3JrIGluIHRoaXMgYXJlYS4gV2hlbiB0aGUgdm1jb3JlIGlz
IGR1bXBlZCwgdGhlCj4+IG9sZCBtZW1vcnkgaW4gdGhpcyBhcmVhIG1heSBiZSBhY2Nlc3NlZCwg
dGhlcmVmb3JlLCBrZXJuZWwgaGFzIHRvCj4+IGNvcHkgdGhlIGNvbnRlbnRzIG9mIHRoZSBmaXJz
dCA2NDBrIGFyZWEgdG8gYSBiYWNrdXAgcmVnaW9uIHNvIHRoYXQKPj4ga2R1bXAga2VybmVsIGNh
biByZWFkIHRoZSBvbGQgbWVtb3J5IGZyb20gdGhlIGJhY2t1cCBhcmVhIG9mIHRoZQo+PiBmaXJz
dCA2NDBrIGFyZWEsIHdoaWNoIGlzIGRvbmUgaW4gdGhlIHB1cmdhdG9yeSgpLgo+Pgo+PiBCdXQs
IHRoZSBjdXJyZW50IGhhbmRsaW5nIG9mIGNvcHlpbmcgdGhlIGZpcnN0IDY0MGsgYXJlYSBydW5z
IGludG8KPj4gcHJvYmxlbXMgd2hlbiBTTUUgaXMgZW5hYmxlZCwga2VybmVsIGRvZXMgbm90IHBy
b3Blcmx5IGNvcHkgdGhlc2UKPj4gb2xkIG1lbW9yeSB0byB0aGUgYmFja3VwIGFyZWEgaW4gdGhl
IHB1cmdhdG9yeSgpLCB0aGVyZWJ5LCBrZHVtcAo+PiBrZXJuZWwgcmVhZHMgb3V0IHRoZSBlbmNy
eXB0ZWQgY29udGVudHMsIGJlY2F1c2UgdGhlIGtkdW1wIGtlcm5lbAo+PiBtdXN0IGFjY2VzcyB0
aGUgZmlyc3Qga2VybmVsJ3MgbWVtb3J5IHdpdGggdGhlIGVuY3J5cHRpb24gYml0IHNldAo+PiB3
aGVuIFNNRSBpcyBlbmFibGVkIGluIHRoZSBmaXJzdCBrZXJuZWwuIFBsZWFzZSByZWZlciB0byB0
aGlzIGxpbms6Cj4+Cj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hv
d19idWcuY2dpP2lkPTIwNDc5Mwo+Pgo+PiBGaW5hbGx5LCBpdCBjYXVzZXMgdGhlIGZvbGxvd2lu
ZyBlcnJvcnMsIGFuZCB0aGUgY3Jhc2ggdG9vbCBnZXRzCj4+IGludmFsaWQgcG9pbnRlcnMgd2hl
biBwYXJzaW5nIHRoZSB2bWNvcmUuCj4+Cj4+IGNyYXNoPiBrbWVtIC1zfGdyZXAgLWkgaW52YWxp
ZAo+PiBrbWVtOiBkbWEta21hbGxvYy01MTI6IHNsYWI6ZmZmZmQ3NzY4MDAwMWMwMCBpbnZhbGlk
Cj4+IGZyZWVwb2ludGVyOmE2MDg2YWMwOTlmMGM1YTQKPj4ga21lbTogZG1hLWttYWxsb2MtNTEy
OiBzbGFiOmZmZmZkNzc2ODAwMDFjMDAgaW52YWxpZAo+PiBmcmVlcG9pbnRlcjphNjA4NmFjMDk5
ZjBjNWE0Cj4+IGNyYXNoPgo+Pgo+PiBUbyBhdm9pZCB0aGUgYWJvdmUgZXJyb3JzLCB3aGVuIHRo
ZSBjcmFzaGtlcm5lbCBvcHRpb24gaXMgc3BlY2lmaWVkLAo+PiBsZXRzIHJlc2VydmUgdGhlIHJl
bWFpbmluZyBsb3cgMU1pQiBtZW1vcnkoYWZ0ZXIgcmVzZXJ2aW5nIHJlYWwgbW9kZQo+PiBtZW1v
cnkpIHNvIHRoYXQgdGhlIGFsbG9jYXRlZCBtZW1vcnkgZG9lcyBub3QgZmFsbCBpbnRvIHRoZSBs
b3cgMU1pQgo+PiBhcmVhLCB3aGljaCBtYWtlcyB1cyBub3QgdG8gY29weSB0aGUgZmlyc3QgNjQw
ayBjb250ZW50IHRvIGEgYmFja3VwCj4+IHJlZ2lvbiBpbiBwdXJnYXRvcnkoKS4gVGhpcyBpbmRp
Y2F0ZXMgdGhhdCBpdCBkb2VzIG5vdCBuZWVkIHRvIGJlCj4+IGluY2x1ZGVkIGluIGNyYXNoIGR1
bXBzIG9yIHVzZWQgZm9yIGFueXRoaW5nIGV4Y2VwdCB0aGUgcHJvY2Vzc29yCj4+IHRyYW1wb2xp
bmVzIHRoYXQgbXVzdCBsaXZlIGluIHRoZSBsb3cgMU1pQi4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
TGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiBCVFc6SSBhbHNvIHRy
aWVkIHRvIGZpeCB0aGUgYWJvdmUgcHJvYmxlbSBpbiBwdXJnYXRvcnkoKSwgYnV0IHRoZXJlCj4+
IGFyZSB0b28gbWFueSByZXN0cmljdHMgaW4gcHVyZ2F0b3J5KCkgY29udGV4dCwgZm9yIGV4YW1w
bGU6IGkgY2FuJ3QKPj4gYWxsb2NhdGUgbmV3IG1lbW9yeSB0byBjcmVhdGUgdGhlIGlkZW50aXR5
IG1hcHBpbmcgcGFnZSB0YWJsZSBmb3IKPj4gU01FIHNpdHVhdGlvbi4KPj4KPj4gQ3VycmVudGx5
LCB0aGVyZSBhcmUgdHdvIHBsYWNlcyB3aGVyZSB0aGUgZmlyc3QgNjQwayBhcmVhIGlzIG5lZWRl
ZCwKPj4gdGhlIGZpcnN0IG9uZSBpcyBpbiB0aGUgZmluZF90cmFtcG9saW5lX3BsYWNlbWVudCgp
LCBhbm90aGVyIG9uZSBpcwo+PiBpbiB0aGUgcmVzZXJ2ZV9yZWFsX21vZGUoKSwgYW5kIHRoZWly
IGNvbnRlbnQgZG9lc24ndCBtYXR0ZXIuCj4+Cj4+IEluIGFkZGl0aW9uLCBhbHNvIG5lZWQgdG8g
Y2xlYW4gYWxsIHRoZSBjb2RlIHJlbGF0ZWQgdG8gdGhlIGJhY2t1cAo+PiByZWdpb24gbGF0ZXIu
Cj4+Cj4+ICBhcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMgfCAgMiArKwo+PiAgaW5jbHVkZS9saW51
eC9rZXhlYy5oICAgIHwgIDIgKysKPj4gIGtlcm5lbC9rZXhlY19jb3JlLmMgICAgICB8IDEzICsr
KysrKysrKysrKysKPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC94ODYvcmVhbG1vZGUvaW5pdC5jIGIvYXJjaC94ODYvcmVhbG1vZGUv
aW5pdC5jCj4+IGluZGV4IDdkY2UzOWM4YzAzNC4uMDY0Y2M3OWEwMTVkIDEwMDY0NAo+PiAtLS0g
YS9hcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmMKPj4gKysrIGIvYXJjaC94ODYvcmVhbG1vZGUvaW5p
dC5jCj4+IEBAIC0zLDYgKzMsNyBAQAo+PiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPj4gICNp
bmNsdWRlIDxsaW51eC9tZW1ibG9jay5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L21lbV9lbmNyeXB0
Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgva2V4ZWMuaD4KPj4KPj4gICNpbmNsdWRlIDxhc20vc2V0
X21lbW9yeS5oPgo+PiAgI2luY2x1ZGUgPGFzbS9wZ3RhYmxlLmg+Cj4+IEBAIC0zNCw2ICszNSw3
IEBAIHZvaWQgX19pbml0IHJlc2VydmVfcmVhbF9tb2RlKHZvaWQpCj4+Cj4+ICAJbWVtYmxvY2tf
cmVzZXJ2ZShtZW0sIHNpemUpOwo+PiAgCXNldF9yZWFsX21vZGVfbWVtKG1lbSk7Cj4+ICsJa2V4
ZWNfcmVzZXJ2ZV9sb3dfMU1pQigpOwo+PiAgfQo+Pgo+PiAgc3RhdGljIHZvaWQgX19pbml0IHNl
dHVwX3JlYWxfbW9kZSh2b2lkKQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9rZXhlYy5o
IGIvaW5jbHVkZS9saW51eC9rZXhlYy5oCj4+IGluZGV4IDE3NzZlYjJlNDNhNC4uMzBhY2YxZDcz
OGJjIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2tleGVjLmgKPj4gKysrIGIvaW5jbHVk
ZS9saW51eC9rZXhlYy5oCj4+IEBAIC0zMDYsNiArMzA2LDcgQEAgZXh0ZXJuIHZvaWQgX19jcmFz
aF9rZXhlYyhzdHJ1Y3QgcHRfcmVncyAqKTsKPj4gIGV4dGVybiB2b2lkIGNyYXNoX2tleGVjKHN0
cnVjdCBwdF9yZWdzICopOwo+PiAgaW50IGtleGVjX3Nob3VsZF9jcmFzaChzdHJ1Y3QgdGFza19z
dHJ1Y3QgKik7Cj4+ICBpbnQga2V4ZWNfY3Jhc2hfbG9hZGVkKHZvaWQpOwo+PiArdm9pZCBrZXhl
Y19yZXNlcnZlX2xvd18xTWlCKHZvaWQpOwo+PiAgdm9pZCBjcmFzaF9zYXZlX2NwdShzdHJ1Y3Qg
cHRfcmVncyAqcmVncywgaW50IGNwdSk7Cj4+ICBleHRlcm4gaW50IGtpbWFnZV9jcmFzaF9jb3B5
X3ZtY29yZWluZm8oc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwo+Pgo+PiBAQCAtMzk3LDYgKzM5OCw3
IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBfX2NyYXNoX2tleGVjKHN0cnVjdCBwdF9yZWdzICpyZWdz
KSB7IH0KPj4gIHN0YXRpYyBpbmxpbmUgdm9pZCBjcmFzaF9rZXhlYyhzdHJ1Y3QgcHRfcmVncyAq
cmVncykgeyB9Cj4+ICBzdGF0aWMgaW5saW5lIGludCBrZXhlY19zaG91bGRfY3Jhc2goc3RydWN0
IHRhc2tfc3RydWN0ICpwKSB7IHJldHVybiAwOyB9Cj4+ICBzdGF0aWMgaW5saW5lIGludCBrZXhl
Y19jcmFzaF9sb2FkZWQodm9pZCkgeyByZXR1cm4gMDsgfQo+PiArc3RhdGljIGlubGluZSB2b2lk
IGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCkgeyB9Cj4+ICAjZGVmaW5lIGtleGVjX2luX3By
b2dyZXNzIGZhbHNlCj4+ICAjZW5kaWYgLyogQ09ORklHX0tFWEVDX0NPUkUgKi8KPj4KPj4gZGlm
ZiAtLWdpdCBhL2tlcm5lbC9rZXhlY19jb3JlLmMgYi9rZXJuZWwva2V4ZWNfY29yZS5jCj4+IGlu
ZGV4IDE1ZDcwYTkwYjUwZC4uNWJkODlmMWZlZTQyIDEwMDY0NAo+PiAtLS0gYS9rZXJuZWwva2V4
ZWNfY29yZS5jCj4+ICsrKyBiL2tlcm5lbC9rZXhlY19jb3JlLmMKPj4gQEAgLTM3LDYgKzM3LDcg
QEAKPj4gICNpbmNsdWRlIDxsaW51eC9jb21waWxlci5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L2h1
Z2V0bGIuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9mcmFtZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4
L21lbWJsb2NrLmg+Cj4+Cj4+ICAjaW5jbHVkZSA8YXNtL3BhZ2UuaD4KPj4gICNpbmNsdWRlIDxh
c20vc2VjdGlvbnMuaD4KPj4gQEAgLTcwLDYgKzcxLDE4IEBAIHN0cnVjdCByZXNvdXJjZSBjcmFz
aGtfbG93X3JlcyA9IHsKPj4gIAkuZGVzYyAgPSBJT1JFU19ERVNDX0NSQVNIX0tFUk5FTAo+PiAg
fTsKPj4KPj4gKy8qCj4+ICsgKiBXaGVuIHRoZSBjcmFzaGtlcm5lbCBvcHRpb24gaXMgc3BlY2lm
aWVkLCBvbmx5IHVzZSB0aGUgbG93Cj4+ICsgKiAxTWlCIGZvciB0aGUgcmVhbCBtb2RlIHRyYW1w
b2xpbmUuCj4+ICsgKi8KPj4gK3ZvaWQga2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQih2b2lkKQo+PiAr
ewo+PiArCWlmIChzdHJzdHIoYm9vdF9jb21tYW5kX2xpbmUsICJjcmFzaGtlcm5lbD0iKSkgewo+
IAo+IHN0cnN0cigpIG1hdGNoZXMgZm9yIGV4YW1wbGUsIEFOWUVYVFJBQ0hBUkFDVEVSU2NyYXNo
a2VybmVsPUFOWUVYVFJBQ0hBUkFDVEVSUy4KPiAKPiBJcyBpdCBlbm91Z2ggdG8gdXNlIGNtZGxp
bmVfZmluZF9vcHRpb25fYm9vbCgpPwo+IApUaGUgY21kbGluZV9maW5kX29wdGlvbl9ib29sKCkg
d2lsbCBmaW5kIGEgYm9vbGVhbiBvcHRpb24sIGJ1dCB0aGUgY3Jhc2hrZXJuZWwgb3B0aW9uCmlz
IG5vdCBhIGJvb2xlYW4gb3B0aW9uLCBtYXliZSBpdCBsb29rcyBvZGQuIFNvLCBzaG91bGQgd2Ug
dXNlIHRoZSBjbWRsaW5lX2ZpbmRfb3B0aW9uKCkKYmV0dGVyPwoKKyNpbmNsdWRlIDxhc20vY21k
bGluZS5oPgoKIHZvaWQgX19pbml0IGtleGVjX3Jlc2VydmVfbG93XzFNaUIodm9pZCkKIHsKLSAg
ICAgICBpZiAoc3Ryc3RyKGJvb3RfY29tbWFuZF9saW5lLCAiY3Jhc2hrZXJuZWw9IikpIHsKKyAg
ICAgICBjaGFyIGJ1ZmZlcls0XTsKKworICAgICAgIGlmIChjbWRsaW5lX2ZpbmRfb3B0aW9uKGJv
b3RfY29tbWFuZF9saW5lLCAiY3Jhc2hrZXJuZWw9IiwKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBidWZmZXIsIHNpemVvZihidWZmZXIpKSkgewogICAgICAgICAgICAgICAgbWVtYmxv
Y2tfcmVzZXJ2ZSgwLCAxPDwyMCk7CiAgICAgICAgICAgICAgICBwcl9pbmZvKCJSZXNlcnZpbmcg
dGhlIGxvdyAxTWlCIG9mIG1lbW9yeSBmb3IgY3Jhc2hrZXJuZWxcbiIpOwogICAgICAgIH0KCkFu
ZCBoZXJlLCBubyBuZWVkIHRvIHBhcnNlIHRoZSBhcmd1bWVudHMgb2YgY3Jhc2hrZXJuZWwoc29t
ZXRpbWVzLCB3aGljaCBoYXMgYQpjb21wbGljYXRlZCBzeW50YXgpLCBzbyB0aGUgc2l6ZSBvZiBi
dWZmZXIgc2hvdWxkIGJlIGVub3VnaC4gV2hhdCdzIHlvdXIgb3Bpbmlvbj8KClRoYW5rcwpMaWFu
Ym8KIAo+PiArCQltZW1ibG9ja19yZXNlcnZlKDAsIDE8PDIwKTsKPj4gKwkJcHJfaW5mbygiUmVz
ZXJ2aW5nIHRoZSBsb3cgMU1pQiBvZiBtZW1vcnkgZm9yCj4+IGNyYXNoa2VybmVsXG4iKTsKPj4g
Kwl9Cj4+ICt9Cj4+ICsKPj4gIGludCBrZXhlY19zaG91bGRfY3Jhc2goc3RydWN0IHRhc2tfc3Ry
dWN0ICpwKQo+PiAgewo+PiAgCS8qCj4+IC0tCj4+IDIuMTcuMQo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhl
Y0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8va2V4ZWMK
