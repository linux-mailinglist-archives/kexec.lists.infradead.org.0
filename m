Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1325D742D
	for <lists+kexec@lfdr.de>; Tue, 15 Oct 2019 13:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtqeDmArB17Jyv4wZWTu8rRLOaiU6QIYWyMhXLQlJBY=; b=NR1bi2Q5L6wwZy
	2vYeg5djbEQ251VYgxFycGLqu1hDNgk1w663gD+c58vx3bjJ2a0oCwNqr29ogKL9t40BgGsH4Jyig
	KzD0vfZvebr41HNVDQn2qFCz/mOg57D1L2vfflwy/n5xzpdNFrkDRhfHahHCiuUyihDGuthSzNOi3
	ctTN8kwa+W6gXYKckQYpSTEOjaFKju6HTC8iXA3NZLri+KK2VWX9y3AGl2UQeD1d23Sv+D+Lauf/7
	847e3gukkJ0KDxQjQd+Al3Yudtp+x099y+RxGGQtrGG7izeE1HfYU7nPvrWi5UmSHDJcbO4a637ye
	N6qospASPD8IRPt1p4RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKeh-0004gh-VJ; Tue, 15 Oct 2019 11:06:19 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKec-0004cb-1H
 for kexec@lists.infradead.org; Tue, 15 Oct 2019 11:06:15 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iKKdl-0007dW-VC; Tue, 15 Oct 2019 05:05:21 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iKKdk-0007IJ-Jj; Tue, 15 Oct 2019 05:05:21 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: lijiang <lijiang@redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
 <87zhi51ers.fsf@x220.int.ebiederm.org>
 <72edff0b-9778-2e83-224b-7fe70dfb8d73@redhat.com>
Date: Tue, 15 Oct 2019 06:04:27 -0500
In-Reply-To: <72edff0b-9778-2e83-224b-7fe70dfb8d73@redhat.com> (lijiang's
 message of "Sun, 13 Oct 2019 17:36:28 +0800")
Message-ID: <8736fu1d8k.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iKKdk-0007IJ-Jj; ; ; mid=<8736fu1d8k.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX19iVApUpJOYp2UXKbyUu9vVJ5ookFgRwWM=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa08.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,XMNoVowels,XMSubLong,
 XM_B_Unicode,XM_Body_Dirty_Words autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000]
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.7 XMSubLong Long Subject
 *  0.0 XM_B_Unicode BODY: Testing for specific types of unicode
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa08 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.5 XM_Body_Dirty_Words Contains a dirty word
X-Spam-DCC: XMission; sa08 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;lijiang <lijiang@redhat.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 782 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 3.2 (0.4%), b_tie_ro: 2.2 (0.3%), parse: 0.82
 (0.1%), extract_message_metadata: 4.4 (0.6%), get_uri_detail_list: 2.4
 (0.3%), tests_pri_-1000: 3.5 (0.4%), tests_pri_-950: 1.49 (0.2%),
 tests_pri_-900: 1.25 (0.2%), tests_pri_-90: 34 (4.3%), check_bayes: 32
 (4.1%), b_tokenize: 10 (1.3%), b_tok_get_all: 11 (1.4%), b_comp_prob:
 3.1 (0.4%), b_tok_touch_all: 4.4 (0.6%), b_finish: 0.82 (0.1%),
 tests_pri_0: 717 (91.8%), check_dkim_signature: 0.62 (0.1%),
 check_dkim_adsp: 2.5 (0.3%), poll_dns_idle: 0.90 (0.1%), tests_pri_10:
 2.2 (0.3%), tests_pri_500: 7 (0.9%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_040614_104501_6F92B553 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
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
M+aXpSAxMTo1NCwgRXJpYyBXLiBCaWVkZXJtYW4g5YaZ6YGTOgo+PiBEYXZlIFlvdW5nIDxkeW91
bmdAcmVkaGF0LmNvbT4gd3JpdGVzOgo+PiAKPj4+IEhpIEVyaWMsCj4+Pgo+Pj4gT24gMTAvMTIv
MTkgYXQgMDY6MjZhbSwgRXJpYyBXLiBCaWVkZXJtYW4gd3JvdGU6Cj4+Pj4gTGlhbmJvIEppYW5n
IDxsaWppYW5nQHJlZGhhdC5jb20+IHdyaXRlczoKPj4+Pgo+Pj4+PiBXaGVuIHRoZSBjcmFzaGtl
cm5lbCBrZXJuZWwgY29tbWFuZCBsaW5lIG9wdGlvbiBpcyBzcGVjaWZpZWQsIHRoZQo+Pj4+PiBs
b3cgMU1pQiBtZW1vcnkgd2lsbCBhbHdheXMgYmUgcmVzZXJ2ZWQsIHdoaWNoIG1ha2VzIHRoYXQg
dGhlIG1lbW9yeQo+Pj4+PiBhbGxvY2F0ZWQgbGF0ZXIgd29uJ3QgZmFsbCBpbnRvIHRoZSBsb3cg
MU1pQiBhcmVhLCB0aGVyZWJ5LCBpdCdzIG5vdAo+Pj4+PiBuZWNlc3NhcnkgdG8gY3JlYXRlIGEg
YmFja3VwIHJlZ2lvbiBhbmQgYWxzbyBubyBuZWVkIHRvIGNvcHkgdGhlIGZpcnN0Cj4+Pj4+IDY0
MGsgY29udGVudCB0byBhIGJhY2t1cCByZWdpb24uCj4+Pj4+Cj4+Pj4+IEN1cnJlbnRseSwgdGhl
IGNvZGUgcmVsYXRlZCB0byB0aGUgYmFja3VwIHJlZ2lvbiBjYW4gYmUgc2FmZWx5IHJlbW92ZWQs
Cj4+Pj4+IHNvIGxldHMgY2xlYW4gdXAuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IExpYW5i
byBKaWFuZyA8bGlqaWFuZ0ByZWRoYXQuY29tPgo+Pj4+PiAtLS0KPj4+Pgo+Pj4+PiBkaWZmIC0t
Z2l0IGEvYXJjaC94ODYva2VybmVsL2NyYXNoLmMgYi9hcmNoL3g4Ni9rZXJuZWwvY3Jhc2guYwo+
Pj4+PiBpbmRleCBlYjY1MWZiZGU5MmEuLmNjNTc3NGZjODRjMCAxMDA2NDQKPj4+Pj4gLS0tIGEv
YXJjaC94ODYva2VybmVsL2NyYXNoLmMKPj4+Pj4gKysrIGIvYXJjaC94ODYva2VybmVsL2NyYXNo
LmMKPj4+Pj4gQEAgLTE3Myw4ICsxNzMsNiBAQCB2b2lkIG5hdGl2ZV9tYWNoaW5lX2NyYXNoX3No
dXRkb3duKHN0cnVjdCBwdF9yZWdzICpyZWdzKQo+Pj4+PiAgCj4+Pj4+ICAjaWZkZWYgQ09ORklH
X0tFWEVDX0ZJTEUKPj4+Pj4gIAo+Pj4+PiAtc3RhdGljIHVuc2lnbmVkIGxvbmcgY3Jhc2hfemVy
b19ieXRlczsKPj4+Pj4gLQo+Pj4+PiAgc3RhdGljIGludCBnZXRfbnJfcmFtX3Jhbmdlc19jYWxs
YmFjayhzdHJ1Y3QgcmVzb3VyY2UgKnJlcywgdm9pZCAqYXJnKQo+Pj4+PiAgewo+Pj4+PiAgCXVu
c2lnbmVkIGludCAqbnJfcmFuZ2VzID0gYXJnOwo+Pj4+PiBAQCAtMjM0LDkgKzIzMiwxNSBAQCBz
dGF0aWMgaW50IHByZXBhcmVfZWxmNjRfcmFtX2hlYWRlcnNfY2FsbGJhY2soc3RydWN0IHJlc291
cmNlICpyZXMsIHZvaWQgKmFyZykKPj4+Pj4gIHsKPj4+Pj4gIAlzdHJ1Y3QgY3Jhc2hfbWVtICpj
bWVtID0gYXJnOwo+Pj4+PiAgCj4+Pj4+IC0JY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jhbmdlc10u
c3RhcnQgPSByZXMtPnN0YXJ0Owo+Pj4+PiAtCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNd
LmVuZCA9IHJlcy0+ZW5kOwo+Pj4+PiAtCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4+PiArCWlmIChy
ZXMtPnN0YXJ0ID49IFNaXzFNKSB7Cj4+Pj4+ICsJCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5n
ZXNdLnN0YXJ0ID0gcmVzLT5zdGFydDsKPj4+Pj4gKwkJY21lbS0+cmFuZ2VzW2NtZW0tPm5yX3Jh
bmdlc10uZW5kID0gcmVzLT5lbmQ7Cj4+Pj4+ICsJCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4+PiAr
CX0gZWxzZSBpZiAocmVzLT5lbmQgPiBTWl8xTSkgewo+Pj4+PiArCQljbWVtLT5yYW5nZXNbY21l
bS0+bnJfcmFuZ2VzXS5zdGFydCA9IFNaXzFNOwo+Pj4+PiArCQljbWVtLT5yYW5nZXNbY21lbS0+
bnJfcmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsKPj4+Pj4gKwkJY21lbS0+bnJfcmFuZ2VzKys7Cj4+
Pj4+ICsJfQo+Pj4+Cj4+Pj4gV2hhdCBpcyBnb2luZyBvbiB3aXRoIHRoaXMgY2h1bms/ICBJIGNh
biBndWVzcyBidXQgdGhpcyBuZWVkcyBhIGNsZWFyCj4+Pj4gY29tbWVudC4KPj4+Cj4+PiBJbmRl
ZWQgaXQgbmVlZHMgc29tZSBjb2RlIGNvbW1lbnQsIHRoaXMgaXMgYmFzZWQgb24gc29tZSBvZmZs
aW5lCj4+PiBkaXNjdXNzaW9uLiAgY2F0IC9wcm9jL3ZtY29yZSB3aWxsIGdpdmUgYSB3YXJuaW5n
IGJlY2F1c2UgaW9yZW1hcCBpcwo+Pj4gbWFwcGluZyB0aGUgc3lzdGVtIHJhbS4KPj4+Cj4+PiBX
ZSBwYXNzIHRoZSBmaXJzdCAxTSB0byBrZHVtcCBrZXJuZWwgaW4gZTgyMCBhcyBzeXN0ZW0gcmFt
IHNvIHRoYXQgMm5kCj4+PiBrZXJuZWwgY2FuIHVzZSB0aGUgbG93IDFNIG1lbW9yeSBiZWNhdXNl
IGZvciBleGFtcGxlIHRoZSB0cmFtcG9saW5lCj4+PiBjb2RlLgo+Pj4KPj4+Pgo+Pj4+PiAgCj4+
Pj4+ICAJcmV0dXJuIDA7Cj4+Pj4+ICB9Cj4+Pj4KPj4+Pj4gQEAgLTM1Niw5ICszMzcsMTIgQEAg
aW50IGNyYXNoX3NldHVwX21lbW1hcF9lbnRyaWVzKHN0cnVjdCBraW1hZ2UgKmltYWdlLCBzdHJ1
Y3QgYm9vdF9wYXJhbXMgKnBhcmFtcykKPj4+Pj4gIAltZW1zZXQoJmNtZCwgMCwgc2l6ZW9mKHN0
cnVjdCBjcmFzaF9tZW1tYXBfZGF0YSkpOwo+Pj4+PiAgCWNtZC5wYXJhbXMgPSBwYXJhbXM7Cj4+
Pj4+ICAKPj4+Pj4gLQkvKiBBZGQgZmlyc3QgNjQwSyBzZWdtZW50ICovCj4+Pj4+IC0JZWkuYWRk
ciA9IGltYWdlLT5hcmNoLmJhY2t1cF9zcmNfc3RhcnQ7Cj4+Pj4+IC0JZWkuc2l6ZSA9IGltYWdl
LT5hcmNoLmJhY2t1cF9zcmNfc3o7Cj4+Pj4+ICsJLyoKPj4+Pj4gKwkgKiBBZGQgdGhlIGxvdyBt
ZW1vcnkgcmFuZ2VbMHgxMDAwLCBTWl8xTV0sIHNraXAKPj4+Pj4gKwkgKiB0aGUgZmlyc3QgemVy
byBwYWdlLgo+Pj4+PiArCSAqLwo+Pj4+PiArCWVpLmFkZHIgPSBQQUdFX1NJWkU7Cj4+Pj4+ICsJ
ZWkuc2l6ZSA9IFNaXzFNIC0gUEFHRV9TSVpFOwo+Pj4+PiAgCWVpLnR5cGUgPSBFODIwX1RZUEVf
UkFNOwo+Pj4+PiAgCWFkZF9lODIwX2VudHJ5KHBhcmFtcywgJmVpKTsKPj4+Pgo+Pj4+IExpa2V3
aXNlIGhlcmUuICBXaHkgZG8gd2UgbmVlZCBhIHNwZWNpYWwgY2FzZT8KPj4+PiBXaHkgdGhlIG1h
Z2ljIHdpdGggUEFHRV9TSVpFPwo+Pj4KPj4+IEdvb2QgY2F0Y2gsIHRoZSB6ZXJvIHBhZ2UgcGFy
dCBpcyB1c2VsZXNzLCBJIHRoaW5rIG5vIG90aGVyIHNwZWNpYWwKPj4+IHJlYXNvbiwganVzdCBh
c3N1bWVkIHplcm8gcGFnZSBpcyBub3QgdXNhYmxlLCBidXQgaXQgc2hvdWxkIGJlIG9rIHRvCj4+
PiByZW1vdmUgdGhlIHNwZWNpYWwgaGFuZGxpbmcsIGp1c3QgcGFzcyAwIC0gMU0gaXMgZ29vZCBl
bm91Z2guCj4+IAo+PiBCdXQgaWYgd2UgaGF2ZSBzdG9wcGVkIHNwZWNpYWwgY2FzaW5nIHRoZSBs
b3cgMU0uICBXaHkgZG8gd2UgbmVlZCBhCj4+IHNwZWNpYWwgY2FzZSBoZXJlIGF0IGFsbD8KPj4g
Cj4gSGVyZSwgbmVlZCB0byBwYXNzIHRoZSBsb3cgbWVtb3J5IHJhbmdlIHRvIGtkdW1wIGtlcm5l
bCwgd2hpY2ggd2lsbCBndWFyYW50ZWUKPiB0aGUgYXZhaWxhYmlsaXR5IG9mIGxvdyBtZW1vcnkg
aW4ga2R1bXAga2VybmVsLCBvdGhlcndpc2UsIGtkdW1wIGtlcm5lbCB3b24ndAo+IHVzZSB0aGUg
bG93IG1lbW9yeSByZWdpb24uCj4KPj4gSWYgeW91IG5lZWQgdGhlIHNwZWNpYWwgY2FzZSBpdCBp
cyBhbG1vc3QgY2VydGFpbmx5IHdyb25nIHRvIHNheSB5b3UKPj4gaGF2ZSByYW0gYWJvdmUgNjQw
S2lCIGFuZCBiZWxvdyAxTWlCLiAgVGhhdCBpcyB0aGUgbGVnYWN5IFJPTSBhbmQgdmlkZW8KPj4g
TU1JTyBhcmVhLgo+PiAKPj4gVGhlcmUgaXMgYSByZWFzb24gdGhlIG9yaWdpbmFsIGNvZGUgc2Fp
ZCA2NDBLaUIuCj4+IAo+IERvIHlvdSBtZWFuIHRoYXQgdGhlIDY0MGsgcmVnaW9uIGlzIGdvb2Qg
ZW5vdWdoIGhlcmUgaW5zdGVhZCBvZiAxTWlCPwoKUmVhZGluZyB0aHJvdWdoIHRoZSBjb2RlIG9m
IGNyYXNoX3NldHVwX21lbWFwX2VudHJpZXMgSSBzZWUgdGhhdCB3aGF0CnRoZSBjb2RlIGlzIGRv
aW5nIG5vdy4gIFRoZSBjb2RlIGlzIHJlcGVhdGluZyB0aGUgZTgyMCBtZW1vcnkgbWFwIHdpdGgK
dGhlIG1lbW9yeSBhcmVhcyB0aGF0IHdlcmUgbm90IHJlc2VydmVkIGZvciB0aGUgY3Jhc2gga2Vy
bmVsIHJlbW92ZWQuCgpJbiB3aGljaCBjYXNlIHdoYXQgdGhlIGNvZGUgbmVlZHMgdG8gYmUgZG9p
bmcgc29tZXRoaW5nIGxpa2U6CgoJY21kLnR5cGUgPSBFODIwX1RZUEVfUkFNOwoJZmxhZ3MgPSBJ
T1JFU09VUkNFX01FTTsKCXdhbGtfaW9tZW1fcmVzX2Rlc2MoSU9SRVNfREVTQ19SRVNFUlZFRCwg
ZmxhZ3MsIDAsIDEwMjQqMTAyNCwgJmNtZCwKCQkJICAgICAgIG1lbW1hcF9lbnRyeV9jYWxsYmFj
ayk7CgpEZXBlbmRpbmcgb24gd2hpY2ggYnVncyBleGlzdCBpdCBtaWdodCBtYWtlIHNlbnNlIHRv
IGxpbWl0IHRoaXMgdG8KdGhlIGxvdyA2NDBLaUIuICBCdXQgZmluZGluZyBzb21ldGhpbmcgdGhl
IGtlcm5lbCBhbHJlYWR5IHJlY29nbml6ZXMKYXMgUkFNIHNob3VsZCBwcmV2ZW50IG1vc3Qgb2Yg
dGhvc2UgcHJvYmxlbXMgYWxyZWFkeS4gIEJhcnJpbmcgYnVncwpJIGFkbWl0IGl0IGRvZXNuJ3Qg
bWFrZSBzZW5zZSB0byByZXBlYXQgdGhlIHdvcmsgdGhhdCBzb21lb25lIGVsc2UKaGFzIGFscmVh
ZHkgZG9uZS4KClRoaXMgYml0OgoJLyogQWRkIGU4MjAgcmVzZXJ2ZWQgcmFuZ2VzICovCgljbWQu
dHlwZSA9IEU4MjBfVFlQRV9SRVNFUlZFRDsKCWZsYWdzID0gSU9SRVNPVVJDRV9NRU07Cgl3YWxr
X2lvbWVtX3Jlc19kZXNjKElPUkVTX0RFU0NfUkVTRVJWRUQsIGZsYWdzLCAwLCAtMSwgJmNtZCwK
CQkJICAgbWVtbWFwX2VudHJ5X2NhbGxiYWNrKTsKClNob3VsZCBwcm9iYWJseSBzdGFydCBhdCAx
TWlCIGluc3RlYWQgb2YgMC4gIEp1c3Qgc28gd2UgZG9uJ3QgcmVwb3J0IHRoZQptZW1vcnkgYmVs
b3cgMU1pQiBhcyB1bmNvbmRpdGlvbmFsbHkgcmVzZXJ2ZWQuICAgSSBkb24ndCBwcm9wZXJseQp1
bmRlcnN0YW5kIHRoZSBJT1JFU19ERVNDX1JFU0VSVkVEIGZsYWcsIGFuZCBob3cgdGhhdCBkaWZm
ZXJzIGZyb20KZmxhZ3MuICBTbyBwbGVhc2UgdGVzdCBteSBzdWdnZXN0aW9ucyB0byB2ZXJpZnkg
dGhlIGNvZGUgd29ya3MgYXMKZXhwZWN0ZWQuCgpFcmljCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2tleGVjCg==
