Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10FFD7455
	for <lists+kexec@lfdr.de>; Tue, 15 Oct 2019 13:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIxzKjoHeg532aEUdLM6vmiDp7XBZZ2bo5chH+P1S30=; b=r/BmYPdOen4XSl
	P1iYAXs3O4KKJB5wKAMhzkWHjC/9yNhCABBspApXzDBndUpEiVsUDNIUyczdWd1mTOz/luxnscQVp
	hs9N7mfYLiPNU/tqNPGXCVA6bVabGw/NKL6b4y8wUelpBqgKZ3GsnXZ05JOLngn7D95vak2NnicJG
	R1FF0D29gu7lWSgcNPSthMX99nvfFiAJiMSGgPuFKm5NfnPWRuqhGujk/pI6efKaSY9h6A/yXBka6
	4XsntTTSIOxuW3kMizh7QlocFaYCaEwDahYXDNoCbUivAj8C5EvxAtNcsGEh6MFkPFKoMBvhrpJ3O
	18+as/0JOQkMYZDaKUWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKkW-0006xk-BN; Tue, 15 Oct 2019 11:12:20 +0000
Received: from out03.mta.xmission.com ([166.70.13.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkS-0006uY-Sg
 for kexec@lists.infradead.org; Tue, 15 Oct 2019 11:12:18 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out03.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iKKkR-0004nD-5y; Tue, 15 Oct 2019 05:12:15 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iKKkQ-0005CK-BC; Tue, 15 Oct 2019 05:12:15 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: lijiang <lijiang@redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
 <f3fc12b9-be39-d430-52f5-d1b76b2599a3@redhat.com>
Date: Tue, 15 Oct 2019 06:11:21 -0500
In-Reply-To: <f3fc12b9-be39-d430-52f5-d1b76b2599a3@redhat.com> (lijiang's
 message of "Mon, 14 Oct 2019 18:02:22 +0800")
Message-ID: <87tv8az2jq.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iKKkQ-0005CK-BC; ; ; mid=<87tv8az2jq.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/CQX+QOBFNW++gFp6mHXP7BzIXPyWEAgA=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa03.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong,
 XM_B_Unicode,XM_Body_Dirty_Words autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000] *  0.7 XMSubLong Long Subject
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 *  0.0 XM_B_Unicode BODY: Testing for specific types of unicode
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa03 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.5 XM_Body_Dirty_Words Contains a dirty word
X-Spam-DCC: XMission; sa03 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;lijiang <lijiang@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 429 ms - load_scoreonly_sql: 0.04 (0.0%),
 signal_user_changed: 3.1 (0.7%), b_tie_ro: 2.2 (0.5%), parse: 1.15
 (0.3%), extract_message_metadata: 6 (1.3%), get_uri_detail_list: 3.1
 (0.7%), tests_pri_-1000: 2.2 (0.5%), tests_pri_-950: 1.05 (0.2%),
 tests_pri_-900: 0.89 (0.2%), tests_pri_-90: 25 (5.9%), check_bayes: 24
 (5.5%), b_tokenize: 8 (1.8%), b_tok_get_all: 8 (1.8%), b_comp_prob:
 1.93 (0.4%), b_tok_touch_all: 3.2 (0.7%), b_finish: 0.65 (0.2%),
 tests_pri_0: 375 (87.5%), check_dkim_signature: 0.59 (0.1%),
 check_dkim_adsp: 2.0 (0.5%), poll_dns_idle: 0.13 (0.0%), tests_pri_10:
 1.71 (0.4%), tests_pri_500: 5 (1.2%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041216_954070_AE930F72 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, tglx@linutronix.de,
 Dave Young <dyoung@redhat.com>, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

bGlqaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPiB3cml0ZXM6Cgo+IOWcqCAyMDE55bm0MTDmnIgx
MuaXpSAyMDoxNiwgRGF2ZSBZb3VuZyDlhpnpgZM6Cj4+IEhpIEVyaWMsCj4+IAo+PiBPbiAxMC8x
Mi8xOSBhdCAwNjoyNmFtLCBFcmljIFcuIEJpZWRlcm1hbiB3cm90ZToKPj4+IExpYW5ibyBKaWFu
ZyA8bGlqaWFuZ0ByZWRoYXQuY29tPiB3cml0ZXM6Cj4+Pgo+Pj4+IFdoZW4gdGhlIGNyYXNoa2Vy
bmVsIGtlcm5lbCBjb21tYW5kIGxpbmUgb3B0aW9uIGlzIHNwZWNpZmllZCwgdGhlCj4+Pj4gbG93
IDFNaUIgbWVtb3J5IHdpbGwgYWx3YXlzIGJlIHJlc2VydmVkLCB3aGljaCBtYWtlcyB0aGF0IHRo
ZSBtZW1vcnkKPj4+PiBhbGxvY2F0ZWQgbGF0ZXIgd29uJ3QgZmFsbCBpbnRvIHRoZSBsb3cgMU1p
QiBhcmVhLCB0aGVyZWJ5LCBpdCdzIG5vdAo+Pj4+IG5lY2Vzc2FyeSB0byBjcmVhdGUgYSBiYWNr
dXAgcmVnaW9uIGFuZCBhbHNvIG5vIG5lZWQgdG8gY29weSB0aGUgZmlyc3QKPj4+PiA2NDBrIGNv
bnRlbnQgdG8gYSBiYWNrdXAgcmVnaW9uLgo+Pj4+Cj4+Pj4gQ3VycmVudGx5LCB0aGUgY29kZSBy
ZWxhdGVkIHRvIHRoZSBiYWNrdXAgcmVnaW9uIGNhbiBiZSBzYWZlbHkgcmVtb3ZlZCwKPj4+PiBz
byBsZXRzIGNsZWFuIHVwLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTGlhbmJvIEppYW5nIDxs
aWppYW5nQHJlZGhhdC5jb20+Cj4+Pj4gLS0tCj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL3g4
Ni9rZXJuZWwvY3Jhc2guYyBiL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCj4+Pj4gaW5kZXggZWI2
NTFmYmRlOTJhLi5jYzU3NzRmYzg0YzAgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC94ODYva2VybmVs
L2NyYXNoLmMKPj4+PiArKysgYi9hcmNoL3g4Ni9rZXJuZWwvY3Jhc2guYwo+Pj4+IEBAIC0xNzMs
OCArMTczLDYgQEAgdm9pZCBuYXRpdmVfbWFjaGluZV9jcmFzaF9zaHV0ZG93bihzdHJ1Y3QgcHRf
cmVncyAqcmVncykKPj4+PiAgCj4+Pj4gICNpZmRlZiBDT05GSUdfS0VYRUNfRklMRQo+Pj4+ICAK
Pj4+PiAtc3RhdGljIHVuc2lnbmVkIGxvbmcgY3Jhc2hfemVyb19ieXRlczsKPj4+PiAtCj4+Pj4g
IHN0YXRpYyBpbnQgZ2V0X25yX3JhbV9yYW5nZXNfY2FsbGJhY2soc3RydWN0IHJlc291cmNlICpy
ZXMsIHZvaWQgKmFyZykKPj4+PiAgewo+Pj4+ICAJdW5zaWduZWQgaW50ICpucl9yYW5nZXMgPSBh
cmc7Cj4+Pj4gQEAgLTIzNCw5ICsyMzIsMTUgQEAgc3RhdGljIGludCBwcmVwYXJlX2VsZjY0X3Jh
bV9oZWFkZXJzX2NhbGxiYWNrKHN0cnVjdCByZXNvdXJjZSAqcmVzLCB2b2lkICphcmcpCj4+Pj4g
IHsKPj4+PiAgCXN0cnVjdCBjcmFzaF9tZW0gKmNtZW0gPSBhcmc7Cj4+Pj4gIAo+Pj4+IC0JY21l
bS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSByZXMtPnN0YXJ0Owo+Pj4+IC0JY21l
bS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uZW5kID0gcmVzLT5lbmQ7Cj4+Pj4gLQljbWVtLT5u
cl9yYW5nZXMrKzsKPj4+PiArCWlmIChyZXMtPnN0YXJ0ID49IFNaXzFNKSB7Cj4+Pj4gKwkJY21l
bS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSByZXMtPnN0YXJ0Owo+Pj4+ICsJCWNt
ZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNdLmVuZCA9IHJlcy0+ZW5kOwo+Pj4+ICsJCWNtZW0t
Pm5yX3JhbmdlcysrOwo+Pj4+ICsJfSBlbHNlIGlmIChyZXMtPmVuZCA+IFNaXzFNKSB7Cj4+Pj4g
KwkJY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10uc3RhcnQgPSBTWl8xTTsKPj4+PiArCQlj
bWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsKPj4+PiArCQljbWVt
LT5ucl9yYW5nZXMrKzsKPj4+PiArCX0KPj4+Cj4+PiBXaGF0IGlzIGdvaW5nIG9uIHdpdGggdGhp
cyBjaHVuaz8gIEkgY2FuIGd1ZXNzIGJ1dCB0aGlzIG5lZWRzIGEgY2xlYXIKPj4+IGNvbW1lbnQu
Cj4+IAo+PiBJbmRlZWQgaXQgbmVlZHMgc29tZSBjb2RlIGNvbW1lbnQsIHRoaXMgaXMgYmFzZWQg
b24gc29tZSBvZmZsaW5lCj4+IGRpc2N1c3Npb24uICBjYXQgL3Byb2Mvdm1jb3JlIHdpbGwgZ2l2
ZSBhIHdhcm5pbmcgYmVjYXVzZSBpb3JlbWFwIGlzCj4+IG1hcHBpbmcgdGhlIHN5c3RlbSByYW0u
Cj4+IAo+PiBXZSBwYXNzIHRoZSBmaXJzdCAxTSB0byBrZHVtcCBrZXJuZWwgaW4gZTgyMCBhcyBz
eXN0ZW0gcmFtIHNvIHRoYXQgMm5kCj4+IGtlcm5lbCBjYW4gdXNlIHRoZSBsb3cgMU0gbWVtb3J5
IGJlY2F1c2UgZm9yIGV4YW1wbGUgdGhlIHRyYW1wb2xpbmUKPj4gY29kZS4KPj4gCj4gVGhhbmsg
eW91LCBFcmljIGFuZCBEYXZlLiBJIHdpbGwgYWRkIHRoZSBjb2RlIGNvbW1lbnQgYXMgYmVsb3cg
aWYgaXQgd291bGQgYmUgT0suCj4KPiBAQCAtMjM0LDkgKzIzMiwyMCBAQCBzdGF0aWMgaW50IHBy
ZXBhcmVfZWxmNjRfcmFtX2hlYWRlcnNfY2FsbGJhY2soc3RydWN0IHJlc291cmNlICpyZXMsIHZv
aWQgKmFyZykKPiAgewo+ICAgICAgICAgc3RydWN0IGNyYXNoX21lbSAqY21lbSA9IGFyZzsKPiAg
Cj4gLSAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5zdGFydCA9IHJlcy0+c3Rh
cnQ7Cj4gLSAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5lbmQgPSByZXMtPmVu
ZDsKPiAtICAgICAgIGNtZW0tPm5yX3JhbmdlcysrOwo+ICsgICAgICAgLyoKPiArICAgICAgICAq
IEN1cnJlbnRseSwgcGFzcyB0aGUgbG93IDFNaUIgcmFuZ2UgdG8ga2R1bXAga2VybmVsIGluIGU4
MjAKPiArICAgICAgICAqIGFzIHN5c3RlbSByYW0gc28gdGhhdCBrZHVtcCBrZXJuZWwgY2FuIGFs
c28gdXNlIHRoZSBsb3cgMU1pQgo+ICsgICAgICAgICogbWVtb3J5IGR1ZSB0byB0aGUgcmVhbCBt
b2RlIHRyYW1wb2xpbmUgY29kZS4KPiArICAgICAgICAqIEFuZCBsYXRlciwgdGhlIGxvdyAxTWlC
IHJhbmdlIHdpbGwgYmUgZXhjbHVlZCBmcm9tIGVsZiBoZWFkZXIsCj4gKyAgICAgICAgKiB3aGlj
aCB3aWxsIGF2b2lkIHJlbWFwcGluZyB0aGUgMU1pQiBzeXN0ZW0gcmFtIHdoZW4gZHVtcGluZwo+
ICsgICAgICAgICogdm1jb3JlLgo+ICsgICAgICAgICovCj4gKyAgICAgICBpZiAocmVzLT5zdGFy
dCA+PSBTWl8xTSkgewo+ICsgICAgICAgICAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFu
Z2VzXS5zdGFydCA9IHJlcy0+c3RhcnQ7Cj4gKyAgICAgICAgICAgICAgIGNtZW0tPnJhbmdlc1tj
bWVtLT5ucl9yYW5nZXNdLmVuZCA9IHJlcy0+ZW5kOwo+ICsgICAgICAgICAgICAgICBjbWVtLT5u
cl9yYW5nZXMrKzsKPiArICAgICAgIH0gZWxzZSBpZiAocmVzLT5lbmQgPiBTWl8xTSkgewo+ICsg
ICAgICAgICAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5zdGFydCA9IFNaXzFN
Owo+ICsgICAgICAgICAgICAgICBjbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5lbmQgPSBy
ZXMtPmVuZDsKPiArICAgICAgICAgICAgICAgY21lbS0+bnJfcmFuZ2VzKys7Cj4gKyAgICAgICB9
Cj4gIAo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KCkkganVzdCByZWFkIHRocm91Z2ggdGhlIGFw
cHJvcHJpYXRlIHNlY3Rpb24gb2YgY3Jhc2guYyBhbmQgdGhlIHdheQp0aGluZ3MgYXJlIHN0cnVj
dHVyZWQgZG9pbmcgdGhpcyB3b3JrIGluCnByZXBhcmVfZWxmNjRfcmFtX2hlYWRlcnNfY2FsbGJh
Y2sgaXMgd3JvbmcuCgpUaGlzIGNhbiBiZSBkb25lIGluIGEgc2ltcGxlciBtYW5uZXIgaW4gZWxm
X2hlYWRlcl9leGNsdWRlX3Jhbmdlcy4KU29tZXRoaW5nIGxpa2U6CgoJLyogVGhlIGxvdyAxTWlC
IGlzIGFsd2F5cyByZXNlcnZlZCAqLwoJcmV0ID0gY3Jhc2hfZXhjbHVkZV9tZW1fcmFuZ2UoY21l
bSwgMCwgMTAyNCoxMDI0KTsKCWlmIChyZXQpCgkJcmV0dXJuIHJldDsKCkVyaWMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlz
dAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8va2V4ZWMK
