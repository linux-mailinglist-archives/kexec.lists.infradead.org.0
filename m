Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497EC1C3C61
	for <lists+kexec@lfdr.de>; Mon,  4 May 2020 16:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITd4XRJsXdBZ4KsITgXSc31O9G06G+/7bnhS3/Jj+6I=; b=OUTwUAFbt2iE5P
	iFtO+4VQvzaVfo8urevCvivkdIspTzDCd+n1EhfywKLrxnuEQzwv+nfg/JGHfguZAAldgHKDx98QZ
	J+NTg3ls5sZfU7PiJSSf2824J2EL0bO/+7Rha2wkVTiTTJeLBHyreiBvD22aI0sH/VtlakTHoA7iw
	hruVQfpMswBX4S4xN+0KTsTs2BI/yjdOg9k71QytAZTGPx+gFhoTr7E9UrzGbOgnbchq+KaodoBN6
	pARiygSu33O3+CO0jbeQGiIsHbn/wKjQnAlyZiez3VSVvVgqDultwFGWkFwMNOhoTQf1q0Gx25mFl
	ff3s1qTgBTybtyLjrzqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVblM-0005v8-6l; Mon, 04 May 2020 14:08:04 +0000
Received: from out02.mta.xmission.com ([166.70.13.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVblJ-0005sN-87
 for kexec@lists.infradead.org; Mon, 04 May 2020 14:08:02 +0000
Received: from in02.mta.xmission.com ([166.70.13.52])
 by out02.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jVbkt-0005Vo-88; Mon, 04 May 2020 08:07:35 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in02.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jVbkc-0004Rq-KP; Mon, 04 May 2020 08:07:35 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: Joonsoo Kim <js1304@gmail.com>
References: <1588130803-20527-1-git-send-email-iamjoonsoo.kim@lge.com>
 <1588130803-20527-4-git-send-email-iamjoonsoo.kim@lge.com>
 <87h7wzvjko.fsf@x220.int.ebiederm.org>
 <CAAmzW4MrD75+Prw=fQ=d5uXKgGy3urBwmxnNtoNsw5M1m9xjYQ@mail.gmail.com>
Date: Mon, 04 May 2020 09:03:56 -0500
In-Reply-To: <CAAmzW4MrD75+Prw=fQ=d5uXKgGy3urBwmxnNtoNsw5M1m9xjYQ@mail.gmail.com>
 (Joonsoo Kim's message of "Mon, 4 May 2020 12:10:36 +0900")
Message-ID: <87ftcfpzjn.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jVbkc-0004Rq-KP; ; ; mid=<87ftcfpzjn.fsf@x220.int.ebiederm.org>;
 ; ; hst=in02.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX19LaTlNQHloxB04ZCtMYj2M+lNA8nn2ED8=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
 T_TooManySym_02,XMSubLong,XM_B_SpammyTLD,XM_B_Unicode
 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.5000] *  0.7 XMSubLong Long Subject
 *  0.0 XM_B_Unicode BODY: Testing for specific types of unicode
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa07 0; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_02 5+ unique symbols in subject
 *  1.0 XM_B_SpammyTLD Contains uncommon/spammy TLD
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: ; sa07 0; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: *;Joonsoo Kim <js1304@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 3468 ms - load_scoreonly_sql: 0.07 (0.0%),
 signal_user_changed: 16 (0.4%), b_tie_ro: 14 (0.4%), parse: 2.0 (0.1%),
 extract_message_metadata: 106 (3.1%), get_uri_detail_list: 24 (0.7%),
 tests_pri_-1000: 146 (4.2%), tests_pri_-950: 2.0 (0.1%),
 tests_pri_-900: 26 (0.8%), tests_pri_-90: 674 (19.4%), check_bayes:
 669 (19.3%), b_tokenize: 200 (5.8%), b_tok_get_all: 161 (4.6%),
 b_comp_prob: 13 (0.4%), b_tok_touch_all: 251 (7.2%), b_finish: 2.9
 (0.1%), tests_pri_0: 2378 (68.6%), check_dkim_signature: 0.95 (0.0%),
 check_dkim_adsp: 4.5 (0.1%), poll_dns_idle: 2.2 (0.1%), tests_pri_10:
 12 (0.3%), tests_pri_500: 101 (2.9%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH v2 03/10] kexec: separate PageHighMem() and
 PageHighMemZone() use case
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_070801_315556_D2E10521 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.232 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-team@lge.com, Michal Hocko <mhocko@suse.com>,
 Minchan Kim <minchan@kernel.org>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Rik van Riel <riel@surriel.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Christoph Hellwig <hch@infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Huang Rui <ray.huang@amd.com>, Kexec Mailing List <kexec@lists.infradead.org>,
 Pavel Machek <pavel@ucw.cz>, Johannes Weiner <hannes@cmpxchg.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Mel Gorman <mgorman@techsingularity.net>, Roman Gushchin <guro@fb.com>,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CkkgaGF2ZSBhZGRlZCBpbiB0aGUga2V4ZWMgbWFpbGxpbmcgbGlzdC4KCkxvb2tpbmcgYXQgdGhl
IHBhdGNoIHdlIGFyZSBkaXNjdXNzaW5nIGl0IGFwcGVhcnMgdGhhdCB0aGUga2V4ZWMgY29kZQpj
b3VsZCBiZSBkb2luZyBtdWNoIGJldHRlciBpbiBoaWdobWVtIHNpdHVhdGlvbnMgdG9kYXkgYnV0
IGlzIG5vdC4KCgpKb29uc29vIEtpbSA8anMxMzA0QGdtYWlsLmNvbT4gd3JpdGVzOgoKPiAyMDIw
64WEIDXsm5QgMeydvCAo6riIKSDsmKTtm4QgMTE6MDYsIEVyaWMgVy4gQmllZGVybWFuIDxlYmll
ZGVybUB4bWlzc2lvbi5jb20+64uY7J20IOyekeyEsToKPj4KPj4ganMxMzA0QGdtYWlsLmNvbSB3
cml0ZXM6Cj4+Cj4+ID4gRnJvbTogSm9vbnNvbyBLaW0gPGlhbWpvb25zb28ua2ltQGxnZS5jb20+
Cj4+ID4KPj4gPiBVbnRpbCBub3csIFBhZ2VIaWdoTWVtKCkgaXMgdXNlZCBmb3IgdHdvIGRpZmZl
cmVudCBjYXNlcy4gT25lIGlzIHRvIGNoZWNrCj4+ID4gaWYgdGhlcmUgaXMgYSBkaXJlY3QgbWFw
cGluZyBmb3IgdGhpcyBwYWdlIG9yIG5vdC4gVGhlIG90aGVyIGlzIHRvIGNoZWNrCj4+ID4gdGhl
IHpvbmUgb2YgdGhpcyBwYWdlLCB0aGF0IGlzLCB3ZWF0aGVyIGl0IGlzIHRoZSBoaWdobWVtIHR5
cGUgem9uZSBvciBub3QuCj4+ID4KPj4gPiBOb3csIHdlIGhhdmUgc2VwYXJhdGUgZnVuY3Rpb25z
LCBQYWdlSGlnaE1lbSgpIGFuZCBQYWdlSGlnaE1lbVpvbmUoKSBmb3IKPj4gPiBlYWNoIGNhc2Vz
LiBVc2UgYXBwcm9wcmlhdGUgb25lLgo+PiA+Cj4+ID4gTm90ZSB0aGF0IHRoZXJlIGFyZSBzb21l
IHJ1bGVzIHRvIGRldGVybWluZSB0aGUgcHJvcGVyIG1hY3JvLgo+PiA+Cj4+ID4gMS4gSWYgUGFn
ZUhpZ2hNZW0oKSBpcyBjYWxsZWQgZm9yIGNoZWNraW5nIGlmIHRoZSBkaXJlY3QgbWFwcGluZyBl
eGlzdHMKPj4gPiBvciBub3QsIHVzZSBQYWdlSGlnaE1lbSgpLgo+PiA+IDIuIElmIFBhZ2VIaWdo
TWVtKCkgaXMgdXNlZCB0byBwcmVkaWN0IHRoZSBwcmV2aW91cyBnZnBfZmxhZ3MgZm9yCj4+ID4g
dGhpcyBwYWdlLCB1c2UgUGFnZUhpZ2hNZW1ab25lKCkuIFRoZSB6b25lIG9mIHRoZSBwYWdlIGlz
IHJlbGF0ZWQgdG8KPj4gPiB0aGUgZ2ZwX2ZsYWdzLgo+PiA+IDMuIElmIHB1cnBvc2Ugb2YgY2Fs
bGluZyBQYWdlSGlnaE1lbSgpIGlzIHRvIGNvdW50IGhpZ2htZW0gcGFnZSBhbmQKPj4gPiB0byBp
bnRlcmFjdCB3aXRoIHRoZSBzeXN0ZW0gYnkgdXNpbmcgdGhpcyBjb3VudCwgdXNlIFBhZ2VIaWdo
TWVtWm9uZSgpLgo+PiA+IFRoaXMgY291bnRlciBpcyB1c3VhbGx5IHVzZWQgdG8gY2FsY3VsYXRl
IHRoZSBhdmFpbGFibGUgbWVtb3J5IGZvciBhbgo+PiA+IGtlcm5lbCBhbGxvY2F0aW9uIGFuZCBw
YWdlcyBvbiB0aGUgaGlnaG1lbSB6b25lIGNhbm5vdCBiZSBhdmFpbGFibGUKPj4gPiBmb3IgYW4g
a2VybmVsIGFsbG9jYXRpb24uCj4+ID4gNC4gT3RoZXJ3aXNlLCB1c2UgUGFnZUhpZ2hNZW1ab25l
KCkuIEl0J3Mgc2FmZSBzaW5jZSBpdCdzIGltcGxlbWVudGF0aW9uCj4+ID4gaXMganVzdCBjb3B5
IG9mIHRoZSBwcmV2aW91cyBQYWdlSGlnaE1lbSgpIGltcGxlbWVudGF0aW9uIGFuZCB3b24ndAo+
PiA+IGJlIGNoYW5nZWQuCj4+ID4KPj4gPiBJIGFwcGx5IHRoZSBydWxlICMyIGZvciB0aGlzIHBh
dGNoLgo+Pgo+PiBIbW0uCj4+Cj4+IFdoYXQgaGFwcGVuZWQgdG8gdGhlIG5vdGlvbiBvZiBkZXBy
ZWNhdGluZyBhbmQgcmVkdWNpbmcgdGhlIHVzYWdlIG9mCj4+IGhpZ2htZW0/ICBJIGtub3cgdGhh
dCB3ZSBoYXZlIHNvbWUgZW1iZWRkZWQgYXJjaGl0ZWN0dXJlcyB3aGVyZSBpdCBpcwo+PiBzdGls
bCBpbXBvcnRhbnQgYnV0IHRoaXMgZmVlbHMgbGlrZSBpdCBmbGllcyBpbiB0aGUgZmFjZSBvZiB0
aGF0Lgo+Cj4gQUZBSUssIGRlcHJlY2F0aW5nIGhpZ2htZW0gcmVxdWlyZXMgc29tZSBtb3JlIHRp
bWUgYW5kLCBiZWZvcmUgdGhlbiwKPiB3ZSBuZWVkIHRvIHN1cHBvcnQgaXQuCgpCdXQgaXQgYXQg
bGVhc3QgbWFrZXMgc2Vuc2UgdG8gbG9vayBhdCB3aGF0IHdlIGFyZSBkb2luZyB3aXRoIGhpZ2ht
ZW0KYW5kIGFzayBpZiBpdCBtYWtlcyBzZW5zZS4KCj4+IFRoaXMgcGFydCBvZiBrZXhlYyB3b3Vs
ZCBiZSBtdWNoIG1vcmUgbWFpbnRhaW5hYmxlIGlmIGl0IGhhZCBhIHByb3Blcgo+PiBtbSBsYXll
ciBoZWxwZXIgdGhhdCB0ZXN0ZWQgdG8gc2VlIGlmIHRoZSBwYWdlIG1hdGNoZWQgdGhlIHBhc3Nl
ZCBpbgo+PiBnZnAgZmxhZ3MuICBUaGF0IHdheSB0aGUgbW0gbGF5ZXIgY291bGQga2VlcCBjaGFu
Z2luZyBhbmQgZG9pbmcgd2VpcmQKPj4gZ3lyYXRpb25zIGFuZCB0aGlzIGNvZGUgd291bGQgbm90
IGNhcmUuCj4KPiBHb29kIGlkZWEhIEkgd2lsbCBkbyBpdC4KPgo+Pgo+PiBXaGF0IHdvdWxkIGJl
IHJlYWxseSBoZWxwZnVsIGlzIGlmIHRoZXJlIHdhcyBhIHN0cmFpZ2h0IGZvcndhcmQgd2F5IHRv
Cj4+IGFsbG9jYXRlIG1lbW9yeSB3aG9zZSBwaHlzaWNhbCBhZGRyZXNzIGZpdHMgaW4gdGhlIG5h
dGl2ZSB3b3JkIHNpemUuCj4+Cj4+Cj4+IEFsbCBJIGtub3cgZm9yIGNlcnRhaW4gYWJvdXQgdGhp
cyBwYXRjaCBpcyB0aGF0IGl0IHRha2VzIGEgcGllY2Ugb2YgY29kZQo+PiB0aGF0IGxvb2tlZCBs
aWtlIGl0IG1hZGUgc2Vuc2UsIGFuZCB0cmFuc2Zyb21zIGl0IGludG8gc29tZXRoaW5nIEkgY2Fu
Cj4+IG5vdCBlYXNpbHkgdmVyaWZ5LCBhbmQgY2FuIG5vdCBtYWludGFpbi4KPgo+IEFsdGhvdWdo
IEkgZGVjaWRlIHRvIG1ha2UgYSBoZWxwZXIgYXMgeW91IGRlc2NyaWJlZCBhYm92ZSwgSSBkb24n
dAo+IHVuZGVyc3RhbmQgd2h5IHlvdSB0aGluayB0aGF0IGEgbmV3IGNvZGUgaXNuJ3QgbWFpbnRh
aW5hYmxlLiBJdCBpcyBqdXN0Cj4gdGhlIHNhbWUgdGhpbmcgd2l0aCBkaWZmZXJlbnQgbmFtZS4g
Q291bGQgeW91IGVsYWJvcmF0ZSBtb3JlIHdoeSBkbwo+IHlvdSB0aGluayBzbz8KCkJlY2F1c2Ug
dGhlIGN1cnJlbnQgY29kZSBpcyBhbHJlYWR5IHdyb25nLiAgSXQgZG9lcyBub3QgaGFuZGxlCnRo
ZSBnZW5lcmFsIGNhc2Ugb2Ygd2hhdCBpdCBjbGFpbXMgdG8gaGFuZGxlLiAgV2hlbiB0aGUgb25s
eSBkaXN0aW5jdGlvbgp0aGF0IG5lZWRzIHRvIGJlIGRyYXduIGlzIGhpZ2htZW0gb3Igbm90IGhp
Z2htZW0gdGhhdCBpcyBsaWtlbHkgZmluZS4KQnV0IG5vdyB5b3UgYXJlIG1ha2luZyBpdCBwb3Nz
aWJsZSB0byBkcmF3IG1vcmUgZGlzdGluY3Rpb25zLiAgQXQgd2hpY2gKcG9pbnQgSSBoYXZlIG5v
IGlkZWEgd2hpY2ggZGlzdGluY3Rpb24gbmVlZHMgdG8gYmUgZHJhd24uCgoKVGhlIGNvZGUgYW5k
IHRoZSBsb2dpYyBpcyBhYm91dCAyMCB5ZWFycyBvbGQuICBXaGVuIGl0IHdhcyB3cml0dGVuIEkK
ZG9uJ3QgcmVjYWxseSB0YWtpbmcgbnVtYSBzZXJpb3VzbHkgYW5kIHRoZSBrZXJuZWwgb25seSBo
YWQgMyB6b25lcwphcyBJIHJlY2FsbCAoRE1BIGFrYSB0aGUgbm93IGRlcHJlY2F0ZWQgR0ZQX0RN
QSwgTk9STUFMLCBhbmQgSElHSCkuCgpUaGUgY29kZSBhdHRlbXB0cyB0byB3b3JrIGFyb3VuZCBs
aW1pdGF0aW9ucyBvZiB0aG9zZSBvbGQgem9uZXMgYW1kIHBsYXkKbmljZSBpbiBhIGhpZ2htZW0g
d29ybGQgYnkgYWxsb2NhdGluZyBtZW1vcnkgSElHSCBtZW1vcnkgYW5kIG5vdCB1c2luZwppdCBp
ZiB0aGUgbWVtb3J5IHdhcyBhYm92ZSA0RyAoIG9uIDMyYml0ICkuCgpMb29raW5nIHRoZSBrZXJu
ZWwgbm93IGhhcyBHRlBfRE1BMzIgc28gb24gMzJiaXQgd2l0aCBoaWdobWVtIHdlIHNob3VsZApw
cm9iYWJseSBiZSB1c2luZyB0aGF0LCB3aGVuIGFsbG9jYXRpbmcgbWVtb3J5LgoKCgoKRnVydGhl
ciBpbiBkZWFsaW5nIHdpdGggdGhpcyBtZW1vcnkgbWFuYWdlbWVudCBzaXR1YXRpb24gd2Ugb25s
eQpoYXZlIHR3byBzaXR1YXRpb25zIHdlIGNhbGwga2ltYWdlX2FsbG9jX3BhZ2UuCgpGb3IgYW4g
aW5kaXJlY3QgcGFnZSB3aGljaCBtdXN0IGhhdmUgYSB2YWxpZCBwYWdlX2FkZHJlc3MocGFnZSku
CldlIGNvdWxkIHByb2JhYmx5IHJlbGF4IHRoYXQgaWYgd2UgY2FyZWQgdG8uCgpGb3IgYSBnZW5l
cmFsIGtleGVjIHBhZ2UgdG8gc3RvcmUgdGhlIG5leHQga2VybmVsIGluIHVudGlsIHdlIHN3aXRj
aC4KVGhlIGdlbmVyYWwgcGFnZXMgY2FuIGJlIGluIGhpZ2ggbWVtb3J5LgoKSW4gYSBoaWdobWVt
IHdvcmxkIGFsbCBvZiB0aG9zZSBwYWdlcyBzaG91bGQgYmUgYmVsb3cgMzJiaXQuCgoKCkdpdmVu
IHRoYXQgd2UgZnVuZGFtZW50YWxseSBoYXZlIHR3byBzaXR1YXRpb25zIG15IHNlbnNlIGlzIHRo
YXQgd2UKc2hvdWxkIGp1c3QgcmVmYWN0b3IgdGhlIGNvZGUgc28gdGhhdCB3ZSBuZXZlciBoYXZl
IHRvIGRlYWwgd2l0aDoKCgoJCQkvKiBUaGUgb2xkIHBhZ2UgSSBoYXZlIGZvdW5kIGNhbm5vdCBi
ZSBhCgkJCSAqIGRlc3RpbmF0aW9uIHBhZ2UsIHNvIHJldHVybiBpdCBpZiBpdCdzCgkJCSAqIGdm
cF9mbGFncyBob25vciB0aGUgb25lcyBwYXNzZWQgaW4uCgkJCSAqLwoJCQlpZiAoIShnZnBfbWFz
ayAmIF9fR0ZQX0hJR0hNRU0pICYmCgkJCSAgICBQYWdlSGlnaE1lbShvbGRfcGFnZSkpIHsKCQkJ
CWtpbWFnZV9mcmVlX3BhZ2VzKG9sZF9wYWdlKTsKCQkJCWNvbnRpbnVlOwoJCQl9CgpFaXRoZXIg
d2UgdGVhY2gga2ltYWdlX2FkZF9lbnRyeSBob3cgdG8gd29yayB3aXRoIGhpZ2ggbWVtb3J5IHBh
Z2VzCihzdGlsbCAzMmJpdCBhY2Nlc3NpYmxlKSBvciB3ZSB0ZWFjaCBraW1hZ2VfYWxsb2NfcGFn
ZSB0byBub3RpY2UgaXQgaXMKYW4gaW5kaXJlY3QgcGFnZSBhbGxvY2F0aW9uIGFuZCB0byBhbHdh
eXMgc2tpcCB0cnlpbmcgdG8gcmV1c2UgdGhlIHBhZ2UKaXQgZm91bmQgaW4gdGhhdCBjYXNlLgoK
VGhhdCB3YXkgdGhlIGNvZGUgZG9lcyBub3QgbmVlZCB0byBrbm93IGFib3V0IGZvcmV2ZXIgY2hh
bmdpbmcgbW0gaW50ZXJuYWxzLgoKCgpXZSBzaG91bGQgcHJvYmFibHkgaW52ZXN0aWdhdGUgR0ZQ
X0RNQTMyIGF0IHRoZSBzYW1lIHRpbWUsIGFuZCBzd2l0Y2ggdG8KdGhhdCBmb3IgMzJiaXQgcmF0
aGVyIHRoYW4gY29udGludWluZyB0byB1c2UgR0ZQX0hJR0hVU0VSLgoKRXJpYwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0
CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo=
