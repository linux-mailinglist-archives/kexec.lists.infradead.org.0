Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5051C676C
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 07:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSDbv7vSfjJdBU5Naq+fUDRPeQILFBp7M7cSDAnfxV8=; b=F5GNGwGj6Hpm0A
	s9tsUGFZbexJhB87++hqYrBw2RNMLoCISoFVoXffZY9oqqCk3/SQ6dsz03ZI85b6KKjpKQ6Jg3qFG
	nf5codd9BIzRQXR4Ptrfu6sF5+JGFm9VoXoI1oDGixb/C8PXYzKyyEhpYYtgDkr6qTspcbCUrAUrY
	CY+p4aT0U1cp1WzF34+ABdG5A4Vmu5c0N6ZIXQil7awjRYVnvsSsMEqxxnWganZbrI+WNQ37juvZa
	fNMB+50QlQFX+yrFtBEns4TA1DSIyxbUgGP1ytWvh0cjEDwcIiMhvpElOzGqSsaQuVDb3KFuSesYN
	AokBFB8NQ/fgSyAPTUyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCX0-0003WP-8C; Wed, 06 May 2020 05:23:42 +0000
Received: from lgeamrelo12.lge.com ([156.147.23.52] helo=lgeamrelo11.lge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCWv-0003TK-IZ
 for kexec@lists.infradead.org; Wed, 06 May 2020 05:23:39 +0000
Received: from unknown (HELO lgeamrelo02.lge.com) (156.147.1.126)
 by 156.147.23.52 with ESMTP; 6 May 2020 14:23:27 +0900
X-Original-SENDERIP: 156.147.1.126
X-Original-MAILFROM: iamjoonsoo.kim@lge.com
Received: from unknown (HELO localhost) (10.177.220.187)
 by 156.147.1.126 with ESMTP; 6 May 2020 14:23:27 +0900
X-Original-SENDERIP: 10.177.220.187
X-Original-MAILFROM: iamjoonsoo.kim@lge.com
Date: Wed, 6 May 2020 14:23:27 +0900
From: Joonsoo Kim <iamjoonsoo.kim@lge.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2 03/10] kexec: separate PageHighMem() and
 PageHighMemZone() use case
Message-ID: <20200506052327.GA25974@js1304-desktop>
References: <1588130803-20527-1-git-send-email-iamjoonsoo.kim@lge.com>
 <1588130803-20527-4-git-send-email-iamjoonsoo.kim@lge.com>
 <87h7wzvjko.fsf@x220.int.ebiederm.org>
 <CAAmzW4MrD75+Prw=fQ=d5uXKgGy3urBwmxnNtoNsw5M1m9xjYQ@mail.gmail.com>
 <87ftcfpzjn.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftcfpzjn.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_222337_882496_BC27E712 
X-CRM114-Status: GOOD (  36.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [156.147.23.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.147.23.52 listed in wl.mailspike.net]
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
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Mel Gorman <mgorman@techsingularity.net>, Roman Gushchin <guro@fb.com>,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMDQsIDIwMjAgYXQgMDk6MDM6NTZBTSAtMDUwMCwgRXJpYyBXLiBCaWVkZXJt
YW4gd3JvdGU6Cj4gCj4gSSBoYXZlIGFkZGVkIGluIHRoZSBrZXhlYyBtYWlsbGluZyBsaXN0Lgo+
IAo+IExvb2tpbmcgYXQgdGhlIHBhdGNoIHdlIGFyZSBkaXNjdXNzaW5nIGl0IGFwcGVhcnMgdGhh
dCB0aGUga2V4ZWMgY29kZQo+IGNvdWxkIGJlIGRvaW5nIG11Y2ggYmV0dGVyIGluIGhpZ2htZW0g
c2l0dWF0aW9ucyB0b2RheSBidXQgaXMgbm90LgoKU291bmQgZ3JlYXQhCgo+IAo+IAo+IEpvb25z
b28gS2ltIDxqczEzMDRAZ21haWwuY29tPiB3cml0ZXM6Cj4gCj4gPiAyMDIw64WEIDXsm5QgMeyd
vCAo6riIKSDsmKTtm4QgMTE6MDYsIEVyaWMgVy4gQmllZGVybWFuIDxlYmllZGVybUB4bWlzc2lv
bi5jb20+64uY7J20IOyekeyEsToKPiA+Pgo+ID4+IGpzMTMwNEBnbWFpbC5jb20gd3JpdGVzOgo+
ID4+Cj4gPj4gPiBGcm9tOiBKb29uc29vIEtpbSA8aWFtam9vbnNvby5raW1AbGdlLmNvbT4KPiA+
PiA+Cj4gPj4gPiBVbnRpbCBub3csIFBhZ2VIaWdoTWVtKCkgaXMgdXNlZCBmb3IgdHdvIGRpZmZl
cmVudCBjYXNlcy4gT25lIGlzIHRvIGNoZWNrCj4gPj4gPiBpZiB0aGVyZSBpcyBhIGRpcmVjdCBt
YXBwaW5nIGZvciB0aGlzIHBhZ2Ugb3Igbm90LiBUaGUgb3RoZXIgaXMgdG8gY2hlY2sKPiA+PiA+
IHRoZSB6b25lIG9mIHRoaXMgcGFnZSwgdGhhdCBpcywgd2VhdGhlciBpdCBpcyB0aGUgaGlnaG1l
bSB0eXBlIHpvbmUgb3Igbm90Lgo+ID4+ID4KPiA+PiA+IE5vdywgd2UgaGF2ZSBzZXBhcmF0ZSBm
dW5jdGlvbnMsIFBhZ2VIaWdoTWVtKCkgYW5kIFBhZ2VIaWdoTWVtWm9uZSgpIGZvcgo+ID4+ID4g
ZWFjaCBjYXNlcy4gVXNlIGFwcHJvcHJpYXRlIG9uZS4KPiA+PiA+Cj4gPj4gPiBOb3RlIHRoYXQg
dGhlcmUgYXJlIHNvbWUgcnVsZXMgdG8gZGV0ZXJtaW5lIHRoZSBwcm9wZXIgbWFjcm8uCj4gPj4g
Pgo+ID4+ID4gMS4gSWYgUGFnZUhpZ2hNZW0oKSBpcyBjYWxsZWQgZm9yIGNoZWNraW5nIGlmIHRo
ZSBkaXJlY3QgbWFwcGluZyBleGlzdHMKPiA+PiA+IG9yIG5vdCwgdXNlIFBhZ2VIaWdoTWVtKCku
Cj4gPj4gPiAyLiBJZiBQYWdlSGlnaE1lbSgpIGlzIHVzZWQgdG8gcHJlZGljdCB0aGUgcHJldmlv
dXMgZ2ZwX2ZsYWdzIGZvcgo+ID4+ID4gdGhpcyBwYWdlLCB1c2UgUGFnZUhpZ2hNZW1ab25lKCku
IFRoZSB6b25lIG9mIHRoZSBwYWdlIGlzIHJlbGF0ZWQgdG8KPiA+PiA+IHRoZSBnZnBfZmxhZ3Mu
Cj4gPj4gPiAzLiBJZiBwdXJwb3NlIG9mIGNhbGxpbmcgUGFnZUhpZ2hNZW0oKSBpcyB0byBjb3Vu
dCBoaWdobWVtIHBhZ2UgYW5kCj4gPj4gPiB0byBpbnRlcmFjdCB3aXRoIHRoZSBzeXN0ZW0gYnkg
dXNpbmcgdGhpcyBjb3VudCwgdXNlIFBhZ2VIaWdoTWVtWm9uZSgpLgo+ID4+ID4gVGhpcyBjb3Vu
dGVyIGlzIHVzdWFsbHkgdXNlZCB0byBjYWxjdWxhdGUgdGhlIGF2YWlsYWJsZSBtZW1vcnkgZm9y
IGFuCj4gPj4gPiBrZXJuZWwgYWxsb2NhdGlvbiBhbmQgcGFnZXMgb24gdGhlIGhpZ2htZW0gem9u
ZSBjYW5ub3QgYmUgYXZhaWxhYmxlCj4gPj4gPiBmb3IgYW4ga2VybmVsIGFsbG9jYXRpb24uCj4g
Pj4gPiA0LiBPdGhlcndpc2UsIHVzZSBQYWdlSGlnaE1lbVpvbmUoKS4gSXQncyBzYWZlIHNpbmNl
IGl0J3MgaW1wbGVtZW50YXRpb24KPiA+PiA+IGlzIGp1c3QgY29weSBvZiB0aGUgcHJldmlvdXMg
UGFnZUhpZ2hNZW0oKSBpbXBsZW1lbnRhdGlvbiBhbmQgd29uJ3QKPiA+PiA+IGJlIGNoYW5nZWQu
Cj4gPj4gPgo+ID4+ID4gSSBhcHBseSB0aGUgcnVsZSAjMiBmb3IgdGhpcyBwYXRjaC4KPiA+Pgo+
ID4+IEhtbS4KPiA+Pgo+ID4+IFdoYXQgaGFwcGVuZWQgdG8gdGhlIG5vdGlvbiBvZiBkZXByZWNh
dGluZyBhbmQgcmVkdWNpbmcgdGhlIHVzYWdlIG9mCj4gPj4gaGlnaG1lbT8gIEkga25vdyB0aGF0
IHdlIGhhdmUgc29tZSBlbWJlZGRlZCBhcmNoaXRlY3R1cmVzIHdoZXJlIGl0IGlzCj4gPj4gc3Rp
bGwgaW1wb3J0YW50IGJ1dCB0aGlzIGZlZWxzIGxpa2UgaXQgZmxpZXMgaW4gdGhlIGZhY2Ugb2Yg
dGhhdC4KPiA+Cj4gPiBBRkFJSywgZGVwcmVjYXRpbmcgaGlnaG1lbSByZXF1aXJlcyBzb21lIG1v
cmUgdGltZSBhbmQsIGJlZm9yZSB0aGVuLAo+ID4gd2UgbmVlZCB0byBzdXBwb3J0IGl0Lgo+IAo+
IEJ1dCBpdCBhdCBsZWFzdCBtYWtlcyBzZW5zZSB0byBsb29rIGF0IHdoYXQgd2UgYXJlIGRvaW5n
IHdpdGggaGlnaG1lbQo+IGFuZCBhc2sgaWYgaXQgbWFrZXMgc2Vuc2UuCj4gCj4gPj4gVGhpcyBw
YXJ0IG9mIGtleGVjIHdvdWxkIGJlIG11Y2ggbW9yZSBtYWludGFpbmFibGUgaWYgaXQgaGFkIGEg
cHJvcGVyCj4gPj4gbW0gbGF5ZXIgaGVscGVyIHRoYXQgdGVzdGVkIHRvIHNlZSBpZiB0aGUgcGFn
ZSBtYXRjaGVkIHRoZSBwYXNzZWQgaW4KPiA+PiBnZnAgZmxhZ3MuICBUaGF0IHdheSB0aGUgbW0g
bGF5ZXIgY291bGQga2VlcCBjaGFuZ2luZyBhbmQgZG9pbmcgd2VpcmQKPiA+PiBneXJhdGlvbnMg
YW5kIHRoaXMgY29kZSB3b3VsZCBub3QgY2FyZS4KPiA+Cj4gPiBHb29kIGlkZWEhIEkgd2lsbCBk
byBpdC4KPiA+Cj4gPj4KPiA+PiBXaGF0IHdvdWxkIGJlIHJlYWxseSBoZWxwZnVsIGlzIGlmIHRo
ZXJlIHdhcyBhIHN0cmFpZ2h0IGZvcndhcmQgd2F5IHRvCj4gPj4gYWxsb2NhdGUgbWVtb3J5IHdo
b3NlIHBoeXNpY2FsIGFkZHJlc3MgZml0cyBpbiB0aGUgbmF0aXZlIHdvcmQgc2l6ZS4KPiA+Pgo+
ID4+Cj4gPj4gQWxsIEkga25vdyBmb3IgY2VydGFpbiBhYm91dCB0aGlzIHBhdGNoIGlzIHRoYXQg
aXQgdGFrZXMgYSBwaWVjZSBvZiBjb2RlCj4gPj4gdGhhdCBsb29rZWQgbGlrZSBpdCBtYWRlIHNl
bnNlLCBhbmQgdHJhbnNmcm9tcyBpdCBpbnRvIHNvbWV0aGluZyBJIGNhbgo+ID4+IG5vdCBlYXNp
bHkgdmVyaWZ5LCBhbmQgY2FuIG5vdCBtYWludGFpbi4KPiA+Cj4gPiBBbHRob3VnaCBJIGRlY2lk
ZSB0byBtYWtlIGEgaGVscGVyIGFzIHlvdSBkZXNjcmliZWQgYWJvdmUsIEkgZG9uJ3QKPiA+IHVu
ZGVyc3RhbmQgd2h5IHlvdSB0aGluayB0aGF0IGEgbmV3IGNvZGUgaXNuJ3QgbWFpbnRhaW5hYmxl
LiBJdCBpcyBqdXN0Cj4gPiB0aGUgc2FtZSB0aGluZyB3aXRoIGRpZmZlcmVudCBuYW1lLiBDb3Vs
ZCB5b3UgZWxhYm9yYXRlIG1vcmUgd2h5IGRvCj4gPiB5b3UgdGhpbmsgc28/Cj4gCj4gQmVjYXVz
ZSB0aGUgY3VycmVudCBjb2RlIGlzIGFscmVhZHkgd3JvbmcuICBJdCBkb2VzIG5vdCBoYW5kbGUK
PiB0aGUgZ2VuZXJhbCBjYXNlIG9mIHdoYXQgaXQgY2xhaW1zIHRvIGhhbmRsZS4gIFdoZW4gdGhl
IG9ubHkgZGlzdGluY3Rpb24KPiB0aGF0IG5lZWRzIHRvIGJlIGRyYXduIGlzIGhpZ2htZW0gb3Ig
bm90IGhpZ2htZW0gdGhhdCBpcyBsaWtlbHkgZmluZS4KPiBCdXQgbm93IHlvdSBhcmUgbWFraW5n
IGl0IHBvc3NpYmxlIHRvIGRyYXcgbW9yZSBkaXN0aW5jdGlvbnMuICBBdCB3aGljaAo+IHBvaW50
IEkgaGF2ZSBubyBpZGVhIHdoaWNoIGRpc3RpbmN0aW9uIG5lZWRzIHRvIGJlIGRyYXduLgo+IAo+
IAo+IFRoZSBjb2RlIGFuZCB0aGUgbG9naWMgaXMgYWJvdXQgMjAgeWVhcnMgb2xkLiAgV2hlbiBp
dCB3YXMgd3JpdHRlbiBJCj4gZG9uJ3QgcmVjYWxseSB0YWtpbmcgbnVtYSBzZXJpb3VzbHkgYW5k
IHRoZSBrZXJuZWwgb25seSBoYWQgMyB6b25lcwo+IGFzIEkgcmVjYWxsIChETUEgYWthIHRoZSBu
b3cgZGVwcmVjYXRlZCBHRlBfRE1BLCBOT1JNQUwsIGFuZCBISUdIKS4KPiAKPiBUaGUgY29kZSBh
dHRlbXB0cyB0byB3b3JrIGFyb3VuZCBsaW1pdGF0aW9ucyBvZiB0aG9zZSBvbGQgem9uZXMgYW1k
IHBsYXkKPiBuaWNlIGluIGEgaGlnaG1lbSB3b3JsZCBieSBhbGxvY2F0aW5nIG1lbW9yeSBISUdI
IG1lbW9yeSBhbmQgbm90IHVzaW5nCj4gaXQgaWYgdGhlIG1lbW9yeSB3YXMgYWJvdmUgNEcgKCBv
biAzMmJpdCApLgo+IAo+IExvb2tpbmcgdGhlIGtlcm5lbCBub3cgaGFzIEdGUF9ETUEzMiBzbyBv
biAzMmJpdCB3aXRoIGhpZ2htZW0gd2Ugc2hvdWxkCj4gcHJvYmFibHkgYmUgdXNpbmcgdGhhdCwg
d2hlbiBhbGxvY2F0aW5nIG1lbW9yeS4KPiAKCkZyb20gcXVpY2sgaW52ZXN0aWdhdGlvbiwgdW5m
b3J0dW5hdGVseSwgWk9ORV9ETUEzMiBpc24ndCBhdmFpbGFibGUgb24KeDg2IDMyYml0IG5vdyBz
byB1c2luZyBHRlBfRE1BMzIgdG8gYWxsb2NhdGUgbWVtb3J5IGJlbG93IDRHIHdvdWxkIG5vdAp3
b3JrLiBFbmFibGluZyBaT05FX0RNQTMyIG9uIHg4NiAzMmJpdCB3b3VsZCBiZSBub3Qgc2ltcGxl
LCBzbywgSU1ITywgaXQKd291bGQgYmUgYmV0dGVyIHRvIGxlYXZlIHRoZSBjb2RlIGFzIGl0IGlz
LgoKPiAKPiAKPiBGdXJ0aGVyIGluIGRlYWxpbmcgd2l0aCB0aGlzIG1lbW9yeSBtYW5hZ2VtZW50
IHNpdHVhdGlvbiB3ZSBvbmx5Cj4gaGF2ZSB0d28gc2l0dWF0aW9ucyB3ZSBjYWxsIGtpbWFnZV9h
bGxvY19wYWdlLgo+IAo+IEZvciBhbiBpbmRpcmVjdCBwYWdlIHdoaWNoIG11c3QgaGF2ZSBhIHZh
bGlkIHBhZ2VfYWRkcmVzcyhwYWdlKS4KPiBXZSBjb3VsZCBwcm9iYWJseSByZWxheCB0aGF0IGlm
IHdlIGNhcmVkIHRvLgo+IAo+IEZvciBhIGdlbmVyYWwga2V4ZWMgcGFnZSB0byBzdG9yZSB0aGUg
bmV4dCBrZXJuZWwgaW4gdW50aWwgd2Ugc3dpdGNoLgo+IFRoZSBnZW5lcmFsIHBhZ2VzIGNhbiBi
ZSBpbiBoaWdoIG1lbW9yeS4KPiAKPiBJbiBhIGhpZ2htZW0gd29ybGQgYWxsIG9mIHRob3NlIHBh
Z2VzIHNob3VsZCBiZSBiZWxvdyAzMmJpdC4KPiAKPiAKPiAKPiBHaXZlbiB0aGF0IHdlIGZ1bmRh
bWVudGFsbHkgaGF2ZSB0d28gc2l0dWF0aW9ucyBteSBzZW5zZSBpcyB0aGF0IHdlCj4gc2hvdWxk
IGp1c3QgcmVmYWN0b3IgdGhlIGNvZGUgc28gdGhhdCB3ZSBuZXZlciBoYXZlIHRvIGRlYWwgd2l0
aDoKPiAKPiAKPiAJCQkvKiBUaGUgb2xkIHBhZ2UgSSBoYXZlIGZvdW5kIGNhbm5vdCBiZSBhCj4g
CQkJICogZGVzdGluYXRpb24gcGFnZSwgc28gcmV0dXJuIGl0IGlmIGl0J3MKPiAJCQkgKiBnZnBf
ZmxhZ3MgaG9ub3IgdGhlIG9uZXMgcGFzc2VkIGluLgo+IAkJCSAqLwo+IAkJCWlmICghKGdmcF9t
YXNrICYgX19HRlBfSElHSE1FTSkgJiYKPiAJCQkgICAgUGFnZUhpZ2hNZW0ob2xkX3BhZ2UpKSB7
Cj4gCQkJCWtpbWFnZV9mcmVlX3BhZ2VzKG9sZF9wYWdlKTsKPiAJCQkJY29udGludWU7Cj4gCQkJ
fQo+IAo+IEVpdGhlciB3ZSB0ZWFjaCBraW1hZ2VfYWRkX2VudHJ5IGhvdyB0byB3b3JrIHdpdGgg
aGlnaCBtZW1vcnkgcGFnZXMKPiAoc3RpbGwgMzJiaXQgYWNjZXNzaWJsZSkgb3Igd2UgdGVhY2gg
a2ltYWdlX2FsbG9jX3BhZ2UgdG8gbm90aWNlIGl0IGlzCj4gYW4gaW5kaXJlY3QgcGFnZSBhbGxv
Y2F0aW9uIGFuZCB0byBhbHdheXMgc2tpcCB0cnlpbmcgdG8gcmV1c2UgdGhlIHBhZ2UKPiBpdCBm
b3VuZCBpbiB0aGF0IGNhc2UuCj4gCj4gVGhhdCB3YXkgdGhlIGNvZGUgZG9lcyBub3QgbmVlZCB0
byBrbm93IGFib3V0IGZvcmV2ZXIgY2hhbmdpbmcgbW0gaW50ZXJuYWxzLgoKTmljZSEgSSBhbHJl
YWR5IGhhdmUgc2VlbiB5b3VyIHBhdGNoIGFuZCBmb3VuZCB0aGF0IGFib3ZlIHR3byBsaW5lcwpy
ZWxhdGVkIHRvIEhJR0hNRU0gYXJlIHJlbW92ZWQuIFRoYW5rcyBmb3IgeW91ciBoZWxwLgoKVGhh
bmtzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4
ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
