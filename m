Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594F6D97EE
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 18:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rff4TP/xjCyOiF5TiMa4xFfAvrddiu1MkJcnyd218Jw=; b=BTAsZlRBBYZKJA
	syjzvyTjDZcc8u512uvec9STw6JunStiW+5ywibIxnFs4xGUJlMhb/o6iyKi2Sfl1/6ixBJs1CFqC
	9xlniogAiurXwUIXz5HRkIvew2jqS0tF5KDrEal8ZFsIhAbO6aosKO1JwJFLSHNr66JXnl6hVx37F
	dF8TCz44HexJ9ZgpqTT6M263PJMQbsiMoyVbRNA0U9Pm8H/IgrHjHCKW0I4r32gouGEM++zmKBQit
	oMBe4ycfkJDA8amMxH6SzZA64pPc9HBYJfwWFtyOTuaX8YiP00HPa3kj5L+8wEWrrWKFD0tb0tan3
	1EVbNSjlK9kuGVQ+IGLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmXl-0005lU-B7; Wed, 16 Oct 2019 16:53:01 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmXh-0005SN-9x
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 16:52:59 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iKmXE-0003u2-SI; Wed, 16 Oct 2019 10:52:28 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1iKmXD-0006Rl-ON; Wed, 16 Oct 2019 10:52:28 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: lijiang <lijiang@redhat.com>
References: <20191012022140.19003-1-lijiang@redhat.com>
 <20191012022140.19003-4-lijiang@redhat.com>
 <87d0f22oi5.fsf@x220.int.ebiederm.org>
 <20191012121625.GA11587@dhcp-128-65.nay.redhat.com>
 <87zhi51ers.fsf@x220.int.ebiederm.org>
 <72edff0b-9778-2e83-224b-7fe70dfb8d73@redhat.com>
 <8736fu1d8k.fsf@x220.int.ebiederm.org>
 <93e6713a-8027-3a7a-4445-9bee56b19f62@redhat.com>
Date: Wed, 16 Oct 2019 11:51:33 -0500
In-Reply-To: <93e6713a-8027-3a7a-4445-9bee56b19f62@redhat.com> (lijiang's
 message of "Wed, 16 Oct 2019 22:30:15 +0800")
Message-ID: <87eezczl9m.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1iKmXD-0006Rl-ON; ; ; mid=<87eezczl9m.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1+UqLKJeXTL8k7QmDIJbylA80uUSDQ/w/E=
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
X-Spam-Timing: total 675 ms - load_scoreonly_sql: 0.03 (0.0%),
 signal_user_changed: 2.2 (0.3%), b_tie_ro: 1.52 (0.2%), parse: 1.23
 (0.2%), extract_message_metadata: 8 (1.2%), get_uri_detail_list: 6
 (0.8%), tests_pri_-1000: 3.9 (0.6%), tests_pri_-950: 1.39 (0.2%),
 tests_pri_-900: 1.13 (0.2%), tests_pri_-90: 42 (6.2%), check_bayes: 40
 (5.9%), b_tokenize: 13 (2.0%), b_tok_get_all: 15 (2.2%), b_comp_prob:
 3.2 (0.5%), b_tok_touch_all: 7 (1.0%), b_finish: 0.55 (0.1%),
 tests_pri_0: 599 (88.7%), check_dkim_signature: 0.65 (0.1%),
 check_dkim_adsp: 2.4 (0.4%), poll_dns_idle: 0.97 (0.1%), tests_pri_10:
 1.79 (0.3%), tests_pri_500: 5.0 (0.7%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 3/3 v3] x86/kdump: clean up all the code related to the
 backup region
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_095257_534209_2BF53D7E 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [166.70.13.231 listed in wl.mailspike.net]
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
NeaXpSAxOTowNCwgRXJpYyBXLiBCaWVkZXJtYW4g5YaZ6YGTOgo+PiBsaWppYW5nIDxsaWppYW5n
QHJlZGhhdC5jb20+IHdyaXRlczoKPj4gCj4+PiDlnKggMjAxOeW5tDEw5pyIMTPml6UgMTE6NTQs
IEVyaWMgVy4gQmllZGVybWFuIOWGmemBkzoKPj4+PiBEYXZlIFlvdW5nIDxkeW91bmdAcmVkaGF0
LmNvbT4gd3JpdGVzOgo+Pj4+Cj4+Pj4+IEhpIEVyaWMsCj4+Pj4+Cj4+Pj4+IE9uIDEwLzEyLzE5
IGF0IDA2OjI2YW0sIEVyaWMgVy4gQmllZGVybWFuIHdyb3RlOgo+Pj4+Pj4gTGlhbmJvIEppYW5n
IDxsaWppYW5nQHJlZGhhdC5jb20+IHdyaXRlczoKPj4+Pj4+Cj4+Pj4+Pj4gV2hlbiB0aGUgY3Jh
c2hrZXJuZWwga2VybmVsIGNvbW1hbmQgbGluZSBvcHRpb24gaXMgc3BlY2lmaWVkLCB0aGUKPj4+
Pj4+PiBsb3cgMU1pQiBtZW1vcnkgd2lsbCBhbHdheXMgYmUgcmVzZXJ2ZWQsIHdoaWNoIG1ha2Vz
IHRoYXQgdGhlIG1lbW9yeQo+Pj4+Pj4+IGFsbG9jYXRlZCBsYXRlciB3b24ndCBmYWxsIGludG8g
dGhlIGxvdyAxTWlCIGFyZWEsIHRoZXJlYnksIGl0J3Mgbm90Cj4+Pj4+Pj4gbmVjZXNzYXJ5IHRv
IGNyZWF0ZSBhIGJhY2t1cCByZWdpb24gYW5kIGFsc28gbm8gbmVlZCB0byBjb3B5IHRoZSBmaXJz
dAo+Pj4+Pj4+IDY0MGsgY29udGVudCB0byBhIGJhY2t1cCByZWdpb24uCj4+Pj4+Pj4KPj4+Pj4+
PiBDdXJyZW50bHksIHRoZSBjb2RlIHJlbGF0ZWQgdG8gdGhlIGJhY2t1cCByZWdpb24gY2FuIGJl
IHNhZmVseSByZW1vdmVkLAo+Pj4+Pj4+IHNvIGxldHMgY2xlYW4gdXAuCj4+Pj4+Pj4KPj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBMaWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4KPj4+Pj4+
PiAtLS0KPj4+Pj4+Cj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5j
IGIvYXJjaC94ODYva2VybmVsL2NyYXNoLmMKPj4+Pj4+PiBpbmRleCBlYjY1MWZiZGU5MmEuLmNj
NTc3NGZjODRjMCAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9hcmNoL3g4Ni9rZXJuZWwvY3Jhc2guYwo+
Pj4+Pj4+ICsrKyBiL2FyY2gveDg2L2tlcm5lbC9jcmFzaC5jCj4+Pj4+Pj4gQEAgLTE3Myw4ICsx
NzMsNiBAQCB2b2lkIG5hdGl2ZV9tYWNoaW5lX2NyYXNoX3NodXRkb3duKHN0cnVjdCBwdF9yZWdz
ICpyZWdzKQo+Pj4+Pj4+ICAKPj4+Pj4+PiAgI2lmZGVmIENPTkZJR19LRVhFQ19GSUxFCj4+Pj4+
Pj4gIAo+Pj4+Pj4+IC1zdGF0aWMgdW5zaWduZWQgbG9uZyBjcmFzaF96ZXJvX2J5dGVzOwo+Pj4+
Pj4+IC0KPj4+Pj4+PiAgc3RhdGljIGludCBnZXRfbnJfcmFtX3Jhbmdlc19jYWxsYmFjayhzdHJ1
Y3QgcmVzb3VyY2UgKnJlcywgdm9pZCAqYXJnKQo+Pj4+Pj4+ICB7Cj4+Pj4+Pj4gIAl1bnNpZ25l
ZCBpbnQgKm5yX3JhbmdlcyA9IGFyZzsKPj4+Pj4+PiBAQCAtMjM0LDkgKzIzMiwxNSBAQCBzdGF0
aWMgaW50IHByZXBhcmVfZWxmNjRfcmFtX2hlYWRlcnNfY2FsbGJhY2soc3RydWN0IHJlc291cmNl
ICpyZXMsIHZvaWQgKmFyZykKPj4+Pj4+PiAgewo+Pj4+Pj4+ICAJc3RydWN0IGNyYXNoX21lbSAq
Y21lbSA9IGFyZzsKPj4+Pj4+PiAgCj4+Pj4+Pj4gLQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFu
Z2VzXS5zdGFydCA9IHJlcy0+c3RhcnQ7Cj4+Pj4+Pj4gLQljbWVtLT5yYW5nZXNbY21lbS0+bnJf
cmFuZ2VzXS5lbmQgPSByZXMtPmVuZDsKPj4+Pj4+PiAtCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4+
Pj4+ICsJaWYgKHJlcy0+c3RhcnQgPj0gU1pfMU0pIHsKPj4+Pj4+PiArCQljbWVtLT5yYW5nZXNb
Y21lbS0+bnJfcmFuZ2VzXS5zdGFydCA9IHJlcy0+c3RhcnQ7Cj4+Pj4+Pj4gKwkJY21lbS0+cmFu
Z2VzW2NtZW0tPm5yX3Jhbmdlc10uZW5kID0gcmVzLT5lbmQ7Cj4+Pj4+Pj4gKwkJY21lbS0+bnJf
cmFuZ2VzKys7Cj4+Pj4+Pj4gKwl9IGVsc2UgaWYgKHJlcy0+ZW5kID4gU1pfMU0pIHsKPj4+Pj4+
PiArCQljbWVtLT5yYW5nZXNbY21lbS0+bnJfcmFuZ2VzXS5zdGFydCA9IFNaXzFNOwo+Pj4+Pj4+
ICsJCWNtZW0tPnJhbmdlc1tjbWVtLT5ucl9yYW5nZXNdLmVuZCA9IHJlcy0+ZW5kOwo+Pj4+Pj4+
ICsJCWNtZW0tPm5yX3JhbmdlcysrOwo+Pj4+Pj4+ICsJfQo+Pj4+Pj4KPj4+Pj4+IFdoYXQgaXMg
Z29pbmcgb24gd2l0aCB0aGlzIGNodW5rPyAgSSBjYW4gZ3Vlc3MgYnV0IHRoaXMgbmVlZHMgYSBj
bGVhcgo+Pj4+Pj4gY29tbWVudC4KPj4+Pj4KPj4+Pj4gSW5kZWVkIGl0IG5lZWRzIHNvbWUgY29k
ZSBjb21tZW50LCB0aGlzIGlzIGJhc2VkIG9uIHNvbWUgb2ZmbGluZQo+Pj4+PiBkaXNjdXNzaW9u
LiAgY2F0IC9wcm9jL3ZtY29yZSB3aWxsIGdpdmUgYSB3YXJuaW5nIGJlY2F1c2UgaW9yZW1hcCBp
cwo+Pj4+PiBtYXBwaW5nIHRoZSBzeXN0ZW0gcmFtLgo+Pj4+Pgo+Pj4+PiBXZSBwYXNzIHRoZSBm
aXJzdCAxTSB0byBrZHVtcCBrZXJuZWwgaW4gZTgyMCBhcyBzeXN0ZW0gcmFtIHNvIHRoYXQgMm5k
Cj4+Pj4+IGtlcm5lbCBjYW4gdXNlIHRoZSBsb3cgMU0gbWVtb3J5IGJlY2F1c2UgZm9yIGV4YW1w
bGUgdGhlIHRyYW1wb2xpbmUKPj4+Pj4gY29kZS4KPj4+Pj4KPj4+Pj4+Cj4+Pj4+Pj4gIAo+Pj4+
Pj4+ICAJcmV0dXJuIDA7Cj4+Pj4+Pj4gIH0KPj4+Pj4+Cj4+Pj4+Pj4gQEAgLTM1Niw5ICszMzcs
MTIgQEAgaW50IGNyYXNoX3NldHVwX21lbW1hcF9lbnRyaWVzKHN0cnVjdCBraW1hZ2UgKmltYWdl
LCBzdHJ1Y3QgYm9vdF9wYXJhbXMgKnBhcmFtcykKPj4+Pj4+PiAgCW1lbXNldCgmY21kLCAwLCBz
aXplb2Yoc3RydWN0IGNyYXNoX21lbW1hcF9kYXRhKSk7Cj4+Pj4+Pj4gIAljbWQucGFyYW1zID0g
cGFyYW1zOwo+Pj4+Pj4+ICAKPj4+Pj4+PiAtCS8qIEFkZCBmaXJzdCA2NDBLIHNlZ21lbnQgKi8K
Pj4+Pj4+PiAtCWVpLmFkZHIgPSBpbWFnZS0+YXJjaC5iYWNrdXBfc3JjX3N0YXJ0Owo+Pj4+Pj4+
IC0JZWkuc2l6ZSA9IGltYWdlLT5hcmNoLmJhY2t1cF9zcmNfc3o7Cj4+Pj4+Pj4gKwkvKgo+Pj4+
Pj4+ICsJICogQWRkIHRoZSBsb3cgbWVtb3J5IHJhbmdlWzB4MTAwMCwgU1pfMU1dLCBza2lwCj4+
Pj4+Pj4gKwkgKiB0aGUgZmlyc3QgemVybyBwYWdlLgo+Pj4+Pj4+ICsJICovCj4+Pj4+Pj4gKwll
aS5hZGRyID0gUEFHRV9TSVpFOwo+Pj4+Pj4+ICsJZWkuc2l6ZSA9IFNaXzFNIC0gUEFHRV9TSVpF
Owo+Pj4+Pj4+ICAJZWkudHlwZSA9IEU4MjBfVFlQRV9SQU07Cj4+Pj4+Pj4gIAlhZGRfZTgyMF9l
bnRyeShwYXJhbXMsICZlaSk7Cj4+Pj4+Pgo+Pj4+Pj4gTGlrZXdpc2UgaGVyZS4gIFdoeSBkbyB3
ZSBuZWVkIGEgc3BlY2lhbCBjYXNlPwo+Pj4+Pj4gV2h5IHRoZSBtYWdpYyB3aXRoIFBBR0VfU0la
RT8KPj4+Pj4KPj4+Pj4gR29vZCBjYXRjaCwgdGhlIHplcm8gcGFnZSBwYXJ0IGlzIHVzZWxlc3Ms
IEkgdGhpbmsgbm8gb3RoZXIgc3BlY2lhbAo+Pj4+PiByZWFzb24sIGp1c3QgYXNzdW1lZCB6ZXJv
IHBhZ2UgaXMgbm90IHVzYWJsZSwgYnV0IGl0IHNob3VsZCBiZSBvayB0bwo+Pj4+PiByZW1vdmUg
dGhlIHNwZWNpYWwgaGFuZGxpbmcsIGp1c3QgcGFzcyAwIC0gMU0gaXMgZ29vZCBlbm91Z2guCj4+
Pj4KPj4+PiBCdXQgaWYgd2UgaGF2ZSBzdG9wcGVkIHNwZWNpYWwgY2FzaW5nIHRoZSBsb3cgMU0u
ICBXaHkgZG8gd2UgbmVlZCBhCj4+Pj4gc3BlY2lhbCBjYXNlIGhlcmUgYXQgYWxsPwo+Pj4+Cj4+
PiBIZXJlLCBuZWVkIHRvIHBhc3MgdGhlIGxvdyBtZW1vcnkgcmFuZ2UgdG8ga2R1bXAga2VybmVs
LCB3aGljaCB3aWxsIGd1YXJhbnRlZQo+Pj4gdGhlIGF2YWlsYWJpbGl0eSBvZiBsb3cgbWVtb3J5
IGluIGtkdW1wIGtlcm5lbCwgb3RoZXJ3aXNlLCBrZHVtcCBrZXJuZWwgd29uJ3QKPj4+IHVzZSB0
aGUgbG93IG1lbW9yeSByZWdpb24uCj4+Pgo+Pj4+IElmIHlvdSBuZWVkIHRoZSBzcGVjaWFsIGNh
c2UgaXQgaXMgYWxtb3N0IGNlcnRhaW5seSB3cm9uZyB0byBzYXkgeW91Cj4+Pj4gaGF2ZSByYW0g
YWJvdmUgNjQwS2lCIGFuZCBiZWxvdyAxTWlCLiAgVGhhdCBpcyB0aGUgbGVnYWN5IFJPTSBhbmQg
dmlkZW8KPj4+PiBNTUlPIGFyZWEuCj4+Pj4KPj4+PiBUaGVyZSBpcyBhIHJlYXNvbiB0aGUgb3Jp
Z2luYWwgY29kZSBzYWlkIDY0MEtpQi4KPj4+Pgo+Pj4gRG8geW91IG1lYW4gdGhhdCB0aGUgNjQw
ayByZWdpb24gaXMgZ29vZCBlbm91Z2ggaGVyZSBpbnN0ZWFkIG9mIDFNaUI/Cj4+IAo+PiBSZWFk
aW5nIHRocm91Z2ggdGhlIGNvZGUgb2YgY3Jhc2hfc2V0dXBfbWVtYXBfZW50cmllcyBJIHNlZSB0
aGF0IHdoYXQKPj4gdGhlIGNvZGUgaXMgZG9pbmcgbm93LiAgVGhlIGNvZGUgaXMgcmVwZWF0aW5n
IHRoZSBlODIwIG1lbW9yeSBtYXAgd2l0aAo+PiB0aGUgbWVtb3J5IGFyZWFzIHRoYXQgd2VyZSBu
b3QgcmVzZXJ2ZWQgZm9yIHRoZSBjcmFzaCBrZXJuZWwgcmVtb3ZlZC4KPj4gCj4+IEluIHdoaWNo
IGNhc2Ugd2hhdCB0aGUgY29kZSBuZWVkcyB0byBiZSBkb2luZyBzb21ldGhpbmcgbGlrZToKPj4g
Cj4+IAljbWQudHlwZSA9IEU4MjBfVFlQRV9SQU07Cj4+IAlmbGFncyA9IElPUkVTT1VSQ0VfTUVN
Owo+PiAJd2Fsa19pb21lbV9yZXNfZGVzYyhJT1JFU19ERVNDX1JFU0VSVkVELCBmbGFncywgMCwg
MTAyNCoxMDI0LCAmY21kLAo+PiAJCQkgICAgICAgbWVtbWFwX2VudHJ5X2NhbGxiYWNrKTsKPj4g
Cj4gVGhlIGFib3ZlIGNvZGUgZG9lcyBub3QgZ2V0IHRoZSByZXN1bHRzIHdoYXQgd2UgZXhwZWN0
ZWQsIGl0IGdldHMgdGhlIHJlc2VydmVkCj4gbWVtb3J5IG1hcmtlZCBhcyAnSU9SRVNfREVTQ19S
RVNFUlZFRCcgaW4gdGhlIGxvdyAxTWlCIHJhbmdlLgo+Cj4gRmluYWxseSwga2R1bXAga2VybmVs
IGhhcHBlbmVkIHRoZSBwYW5pYyBhcyBmb2xsb3c6Cj4gLi4uLi4uCj4gWyAgICAzLjU1NTY2Ml0g
S2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IFJlYWwgbW9kZSB0cmFtcG9saW5lIHdhcyBub3Qg
YWxsb2NhdGVkCj4gWyAgICAzLjU1NjY2MF0gQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVyLzAg
Tm90IHRhaW50ZWQgNS40LjAtcmMzKyAjNAo+IFsgICAgMy41NTY2NjBdIEhhcmR3YXJlIG5hbWU6
IEFNRCBDb3Jwb3JhdGlvbiBTcGVlZHdheS9TcGVlZHdheSwgQklPUyBSU1cxMDA5QyAwNy8yNy8y
MDE4Cj4gWyAgICAzLjU1NjY2MF0gQ2FsbCBUcmFjZToKPiBbICAgIDMuNTU2NjYwXSAgZHVtcF9z
dGFjaysweDQ2LzB4NjAKPiBbICAgIDMuNTU2NjYwXSAgcGFuaWMrMHhmYi8weDJkNwo+IFsgICAg
My41NTY2NjBdICA/IGh2X2luaXRfc3BpbmxvY2tzKzB4N2YvMHg3Zgo+IFsgICAgMy41NTY2NjBd
ICBpbml0X3JlYWxfbW9kZSsweDI3LzB4MWZhCj4gWyAgICAzLjU1NjY2MF0gID8gaHZfaW5pdF9z
cGlubG9ja3MrMHg3Zi8weDdmCj4gWyAgICAzLjU1NjY2MF0gID8gZG9fb25lX2luaXRjYWxsKzB4
NDYvMHgxZTQKPiBbICAgIDMuNTU2NjYwXSAgPyBwcm9jX3JlZ2lzdGVyKzB4ZDAvMHgxMzAKPiBb
ICAgIDMuNTU2NjYwXSAgPyBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweGUyLzB4MjQyCj4gWyAgICAz
LjU1NjY2MF0gID8gcmVzdF9pbml0KzB4YWEvMHhhYQo+IFsgICAgMy41NTY2NjBdICA/IGtlcm5l
bF9pbml0KzB4YS8weDEwNgo+IFsgICAgMy41NTY2NjBdICA/IHJldF9mcm9tX2ZvcmsrMHgyMi8w
eDQwCj4gWyAgICAzLjU1NjY2MF0gUmVib290aW5nIGluIDEwIHNlY29uZHMuLgo+IFsgICAgMy41
NTY2NjBdIEFDUEkgTUVNT1JZIG9yIEkvTyBSRVNFVF9SRUcuCj4KPiBJIG1vZGlmaWVkIHRoZSBh
Ym92ZSBjb2RlLCBhbmQgdGVzdGVkIGl0LiBUaGlzIGNhbiBmaW5kIG91dCB0aGUgc3lzdGVtIHJh
bSBpbgo+IHRoZSBsb3cgMU1pQiByYW5nZS4gQW5kIGl0IHdvcmtlZCB3ZWxsLgo+Cj4gQEAgLTM1
NiwxMSArMzM4LDExIEBAIGludCBjcmFzaF9zZXR1cF9tZW1tYXBfZW50cmllcyhzdHJ1Y3Qga2lt
YWdlICppbWFnZSwgc3RydWN0IGJvb3RfcGFyYW1zICpwYXJhbXMpCj4gICAgICAgICBtZW1zZXQo
JmNtZCwgMCwgc2l6ZW9mKHN0cnVjdCBjcmFzaF9tZW1tYXBfZGF0YSkpOwo+ICAgICAgICAgY21k
LnBhcmFtcyA9IHBhcmFtczsKPiAgCj4gKyAgICAgICAvKiBBZGQgdGhlIGxvdyAxTWlCICovCj4g
KyAgICAgICBjbWQudHlwZSA9IEU4MjBfVFlQRV9SQU07Cj4gKyAgICAgICBmbGFncyA9IElPUkVT
T1VSQ0VfU1lTVEVNX1JBTSB8IElPUkVTT1VSQ0VfQlVTWTsKPiArICAgICAgIHdhbGtfaW9tZW1f
cmVzX2Rlc2MoSU9SRVNfREVTQ19OT05FLCBmbGFncywgMCwgMTAyNCoxMDI0IC0gMSwgJmNtZCwK
PiArICAgICAgICAgICAgICAgICAgICAgICBtZW1tYXBfZW50cnlfY2FsbGJhY2spOwo+CgpUaGF0
IGxvb2tzIGxpa2UgYSB2ZXJ5IHJlYXNvbmFibGUgZml4LgoKPj4gRGVwZW5kaW5nIG9uIHdoaWNo
IGJ1Z3MgZXhpc3QgaXQgbWlnaHQgbWFrZSBzZW5zZSB0byBsaW1pdCB0aGlzIHRvCj4+IHRoZSBs
b3cgNjQwS2lCLiAgQnV0IGZpbmRpbmcgc29tZXRoaW5nIHRoZSBrZXJuZWwgYWxyZWFkeSByZWNv
Z25pemVzCj4+IGFzIFJBTSBzaG91bGQgcHJldmVudCBtb3N0IG9mIHRob3NlIHByb2JsZW1zIGFs
cmVhZHkuICBCYXJyaW5nIGJ1Z3MKPj4gSSBhZG1pdCBpdCBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8g
cmVwZWF0IHRoZSB3b3JrIHRoYXQgc29tZW9uZSBlbHNlCj4+IGhhcyBhbHJlYWR5IGRvbmUuCj4+
IAo+PiBUaGlzIGJpdDoKPj4gCS8qIEFkZCBlODIwIHJlc2VydmVkIHJhbmdlcyAqLwo+PiAJY21k
LnR5cGUgPSBFODIwX1RZUEVfUkVTRVJWRUQ7Cj4+IAlmbGFncyA9IElPUkVTT1VSQ0VfTUVNOwo+
PiAJd2Fsa19pb21lbV9yZXNfZGVzYyhJT1JFU19ERVNDX1JFU0VSVkVELCBmbGFncywgMCwgLTEs
ICZjbWQsCj4+IAkJCSAgIG1lbW1hcF9lbnRyeV9jYWxsYmFjayk7Cj4+IAo+PiBTaG91bGQgcHJv
YmFibHkgc3RhcnQgYXQgMU1pQiBpbnN0ZWFkIG9mIDAuICBKdXN0IHNvIHdlIGRvbid0IHJlcG9y
dCB0aGUKPiBJZiBzbywgaXQgY2FuIG5vdCBmaW5kIG91dCB0aGUgcmVzZXJ2ZWQgbWVtb3J5IG1h
cmtlZCBhcyAnSU9SRVNfREVTQ19SRVNFUlZFRCcgaW4KPiB0aGUgbG93IDFNaUIgcmFuZ2UsIGZp
bmFsbHksIGl0IGRvZXNuJ3QgcGFzcyB0aGUgcmVzZXJ2ZWQgbWVtb3J5IGluIHRoZSBsb3cgMU1p
QiB0bwo+IGtkdW1wIGtlcm5lbCwgd2hpY2ggY291bGQgY2F1c2Ugc29tZSBwcm9ibGVtcywgc3Vj
aCBhcyBTTUUgb3IgUENJIE1NQ09ORklHIGlzc3VlLgoKR29vZCBwb2ludC4gRm9yIHNvbWUgcmVh
c29uIEkgd2FzIHRoaW5raW5nIElPUkVTT1VSQ0VfTUVNIGFuZApJT1JFU09VUkNFX1NZU1RFTV9S
QU0gd2VyZSB0aGUgc2FtZSB0aGluZy4gIEl0IGhhcyBiZWVuIHdheSB0byBsb25nCnNpbmNlIEkg
aGF2ZSBiZWVuIGluIHRoYXQgcGFydCBvZiB0aGUgY29kZS4KClNvIHllcyBsZXQncyBsZWF2ZSB0
aGF0IHBhcnQgYWxvbmUuCgo+PiBtZW1vcnkgYmVsb3cgMU1pQiBhcyB1bmNvbmRpdGlvbmFsbHkg
cmVzZXJ2ZWQuICAgSSBkb24ndCBwcm9wZXJseQo+PiB1bmRlcnN0YW5kIHRoZSBJT1JFU19ERVND
X1JFU0VSVkVEIGZsYWcsIGFuZCBob3cgdGhhdCBkaWZmZXJzIGZyb20KPiBJIGZvdW5kIHRocmVl
IGNvbW1pdHMgYWJvdXQgJ0lPUkVTX0RFU0NfUkVTRVJWRUQnIGZsYWcsIGhvcGUgdGhpcyBoZWxw
cy4KPiAxLmFlOWUxM2Q2MjFkNiAoIng4Ni9lODIwLCBpb3BvcnQ6IEFkZCBhIG5ldyBJL08gcmVz
b3VyY2UgZGVzY3JpcHRvciBJT1JFU19ERVNDX1JFU0VSVkVEIikKPiAyLjVkYTA0Y2M4NmQxMiAo
Ing4Ni9tbTogUmV3b3JrIGlvcmVtYXAgcmVzb3VyY2UgbWFwcGluZyBkZXRlcm1pbmF0aW9uIikK
PiAzLjk4MDYyMWRhZjM2OCAoIng4Ni9jcmFzaDogQWRkIGU4MjAgcmVzZXJ2ZWQgcmFuZ2VzIHRv
IGtkdW1wIGtlcm5lbCdzIGU4MjAgdGFibGUiKQo+Cj4+IGZsYWdzLiAgU28gcGxlYXNlIHRlc3Qg
bXkgc3VnZ2VzdGlvbnMgdG8gdmVyaWZ5IHRoZSBjb2RlIHdvcmtzIGFzCj4+IGV4cGVjdGVkLgo+
PiAKPiBJIGhhdmUgdGVzdGVkIHRoZSB0d28gY2hhbmdlcyB0aGF0IHlvdSBtZW50aW9uZWQsIHBs
ZWFzZSByZWZlciB0byB0aGUKPiByZXBseSBhYm92ZS4KClRoYW5rIHlvdS4gIEl0IGxvb2tzIGxp
a2UgeW91IGhhdmUgZmlndXJlZCBvdXQgaG93IHRoZXNlIHRoaW5ncyBzaG91bGQKd29yay4KCkVy
aWMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhl
YyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
