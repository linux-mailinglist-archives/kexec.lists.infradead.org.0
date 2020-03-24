Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34293190CAF
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 12:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+Gt8ZNdejIdPWZMSY50C2ycGVYeZ7j1xnCXPd6WGxo=; b=OjFfID2RqNCNl4
	4w8xhkHu5eM6N5tPSo6ywl42Aqnbl2fRMFTlpPgJLrnY9pIb1AFjqJbPffY2sfjsTGJS2jOJsFMst
	QRfvk0aR+x2FaQ+sASF/Wu/qmN0lZlVtoFz1e5qz/Zd3lPThEsaALKggd+EnxfJk/xOb3115NELAA
	UNDGtr9nC9gDaiGQYdqonehccivFd9kr4yu9JjXLXqAa4/F2t8zL61wZ3ZeG+jMWcc4ufitHKCrv8
	WI4mCF1/I6l0HV8rFvB3R0Vt7KEWLJtKB25P9WIurigAU9cKdbnTEYh0p88+YSX26G6p/gZKi++sp
	+mLgi0MjmUdT39N9UQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGi1K-0004AK-0P; Tue, 24 Mar 2020 11:46:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGi1A-00041o-PH
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 11:46:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 869D0208C3;
 Tue, 24 Mar 2020 11:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585050408;
 bh=B3BZz4wLayj8zzU2qwt4O0/ebehGWdfaWW5vCwfgR1Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SMwjN1hf5tH8X2Df/7N2s6BtLwnxwiEmX31zRZjBM2zb5qnC103R/SImh5YezjmZb
 yG0wfTZxlZ55r2jjjFR4LpuLDe4ImNKtqCRjfsuCB57Mrs2oZNw/6EZspD83scK/g5
 9KzlzpTpShy7XGQjmNma6jOg/hZp+hZwNx1lDgsI=
Date: Tue, 24 Mar 2020 12:46:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jaewon Kim <jaewon31.kim@samsung.com>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200324114645.GA2330984@kroah.com>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
 <20200324101110.GA2218981@kroah.com> <5E79F102.9080405@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5E79F102.9080405@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_044648_876407_00348152 
X-CRM114-Status: GOOD (  26.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: sergey.senozhatsky.work@gmail.com, leon@kernel.org, linux-mm@kvack.org,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, adobriyan@gmail.com, minchan@kernel.org,
 bhe@redhat.com, ngupta@vflare.org, jaewon31.kim@gmail.com,
 akpm@linux-foundation.org, labbott@redhat.com, sumit.semwal@linaro.org,
 vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXIgMjQsIDIwMjAgYXQgMDg6Mzc6MzhQTSArMDkwMCwgSmFld29uIEtpbSB3cm90
ZToKPiAKPiAKPiBPbiAyMDIw64WEIDAz7JuUIDI07J28IDE5OjExLCBHcmVnIEtIIHdyb3RlOgo+
ID4gT24gVHVlLCBNYXIgMjQsIDIwMjAgYXQgMDY6MTE6MTdQTSArMDkwMCwgSmFld29uIEtpbSB3
cm90ZToKPiA+PiBPbiAyMDIw64WEIDAz7JuUIDIz7J28IDE4OjUzLCBHcmVnIEtIIHdyb3RlOgo+
ID4+Pj4gK2ludCByZWdpc3Rlcl9tZW1pbmZvX2V4dHJhKGF0b21pY19sb25nX3QgKnZhbCwgaW50
IHNoaWZ0LCBjb25zdCBjaGFyICpuYW1lKQo+ID4+Pj4gK3sKPiA+Pj4+ICsJc3RydWN0IG1lbWlu
Zm9fZXh0cmEgKm1lbWluZm8sICptZW10ZW1wOwo+ID4+Pj4gKwlpbnQgbGVuOwo+ID4+Pj4gKwlp
bnQgZXJyb3IgPSAwOwo+ID4+Pj4gKwo+ID4+Pj4gKwltZW1pbmZvID0ga3phbGxvYyhzaXplb2Yo
Km1lbWluZm8pLCBHRlBfS0VSTkVMKTsKPiA+Pj4+ICsJaWYgKCFtZW1pbmZvKSB7Cj4gPj4+PiAr
CQllcnJvciA9IC1FTk9NRU07Cj4gPj4+PiArCQlnb3RvIG91dDsKPiA+Pj4+ICsJfQo+ID4+Pj4g
Kwo+ID4+Pj4gKwltZW1pbmZvLT52YWwgPSB2YWw7Cj4gPj4+PiArCW1lbWluZm8tPnNoaWZ0X2Zv
cl9wYWdlID0gc2hpZnQ7Cj4gPj4+PiArCXN0cm5jcHkobWVtaW5mby0+bmFtZSwgbmFtZSwgTkFN
RV9TSVpFKTsKPiA+Pj4+ICsJbGVuID0gc3RybGVuKG1lbWluZm8tPm5hbWUpOwo+ID4+Pj4gKwlt
ZW1pbmZvLT5uYW1lW2xlbl0gPSAnOic7Cj4gPj4+PiArCXN0cm5jcHkobWVtaW5mby0+bmFtZV9w
YWQsIG1lbWluZm8tPm5hbWUsIE5BTUVfQlVGX1NJWkUpOwo+ID4+Pj4gKwl3aGlsZSAoKytsZW4g
PCBOQU1FX0JVRl9TSVpFIC0gMSkKPiA+Pj4+ICsJCW1lbWluZm8tPm5hbWVfcGFkW2xlbl0gPSAn
ICc7Cj4gPj4+PiArCj4gPj4+PiArCXNwaW5fbG9jaygmbWVtaW5mb19sb2NrKTsKPiA+Pj4+ICsJ
bGlzdF9mb3JfZWFjaF9lbnRyeV9yY3UobWVtdGVtcCwgJm1lbWluZm9faGVhZCwgbGlzdCkgewo+
ID4+Pj4gKwkJaWYgKG1lbXRlbXAtPnZhbCA9PSB2YWwpIHsKPiA+Pj4+ICsJCQllcnJvciA9IC1F
SU5WQUw7Cj4gPj4+PiArCQkJYnJlYWs7Cj4gPj4+PiArCQl9Cj4gPj4+PiArCX0KPiA+Pj4+ICsJ
aWYgKCFlcnJvcikKPiA+Pj4+ICsJCWxpc3RfYWRkX3RhaWxfcmN1KCZtZW1pbmZvLT5saXN0LCAm
bWVtaW5mb19oZWFkKTsKPiA+Pj4+ICsJc3Bpbl91bmxvY2soJm1lbWluZm9fbG9jayk7Cj4gPj4+
IElmIHlvdSBoYXZlIGEgbG9jaywgd2h5IGFyZSB5b3UgbmVlZGluZyByY3U/Cj4gPj4gSSB0aGlu
ayBfcmN1IHNob3VsZCBiZSByZW1vdmVkIG91dCBvZiBsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdS4K
PiA+PiBCdXQgSSdtIGNvbmZ1c2VkIGFib3V0IHdoYXQgeW91IG1lYW50Lgo+ID4+IEkgdXNlZCBy
Y3VfcmVhZF9sb2NrIG9uIF9fbWVtaW5mb19leHRyYSwKPiA+PiBhbmQgSSB0aGluayBzcGluX2xv
Y2sgaXMgYWxzbyBuZWVkZWQgZm9yIGFkZGl0aW9uIGFuZCBkZWxldGlvbiB0byBoYW5kbGUgbXVs
dGlwbGUgbW9kaWZpZXJzLgo+ID4gSWYgdGhhdCdzIHRoZSBjYXNlLCB0aGVuIHRoYXQncyBmaW5l
LCBpdCBqdXN0IGRpZG4ndCBzZWVtIGxpa2UgdGhhdCB3YXMKPiA+IG5lZWRlZC4gIE9yIEkgbWln
aHQgaGF2ZSBiZWVuIHJlYWRpbmcgeW91ciByY3UgbG9naWMgaW5jb3JyZWN0bHkuLi4KPiA+Cj4g
Pj4+PiArCWlmIChlcnJvcikKPiA+Pj4+ICsJCWtmcmVlKG1lbWluZm8pOwo+ID4+Pj4gK291dDoK
PiA+Pj4+ICsKPiA+Pj4+ICsJcmV0dXJuIGVycm9yOwo+ID4+Pj4gK30KPiA+Pj4+ICtFWFBPUlRf
U1lNQk9MKHJlZ2lzdGVyX21lbWluZm9fZXh0cmEpOwo+ID4+PiBFWFBPUlRfU1lNQk9MX0dQTCgp
PyAgSSBoYXZlIHRvIGFzayA6KQo+ID4+IEkgY2FuIHVzZSBFWFBPUlRfU1lNQk9MX0dQTC4KPiA+
Pj4gdGhhbmtzLAo+ID4+Pgo+ID4+PiBncmVnIGstaAo+ID4+Pgo+ID4+Pgo+ID4+IEhlbGxvCj4g
Pj4gVGhhbmsgeW91IGZvciB5b3VyIGNvbW1lbnQuCj4gPj4KPiA+PiBCeSB0aGUgd2F5IHRoZXJl
IHdhcyBub3QgcmVzb2x2ZWQgZGlzY3Vzc2lvbiBvbiB2MSBwYXRjaCBhcyBJIG1lbnRpb25lZCBv
biBjb3ZlciBwYWdlLgo+ID4+IEknZCBsaWtlIHRvIGhlYXIgeW91ciBvcGluaW9uIG9uIHRoaXMg
L3Byb2MvbWVtaW5mb19leHRyYSBub2RlLgo+ID4gSSB0aGluayBpdCBpcyB0aGUgcHJvcGFnYXRp
b24gb2YgYW4gb2xkIGFuZCBvYnNvbGV0ZSBpbnRlcmZhY2UgdGhhdCB5b3UKPiA+IHdpbGwgaGF2
ZSB0byBzdXBwb3J0IGZvciB0aGUgbmV4dCAyMCsgeWVhcnMgYW5kIHlldCBub3QgYWN0dWFsbHkg
YmUKPiA+IHVzZWZ1bCA6KQo+ID4KPiA+PiBEbyB5b3UgdGhpbmsgdGhpcyBpcyBtZWFuaW5nZnVs
IG9yIGNhbm5vdCBjby1leGlzdCB3aXRoIG90aGVyIGZ1dHVyZQo+ID4+IHN5c2ZzIGJhc2VkIEFQ
SS4KPiA+IFdoYXQgc3lzZnMtYmFzZWQgQVBJPwo+IFBsZWFzZSByZWZlciB0byBtYWlsIHRocmVh
ZCBvbiB2MSBwYXRjaCBzZXQgLSBodHRwczovL2xrbWwub3JnL2xrbWwvZmFuY3kvMjAyMC8zLzEw
LzIxMDIKPiBlc3BlY2lhbGx5IGRpc2N1c3Npb24gd2l0aCBMZW9uIFJvbWFub3Zza3kgb24gaHR0
cHM6Ly9sa21sLm9yZy9sa21sL2ZhbmN5LzIwMjAvMy8xNi8xNDAKCkkgcmVhbGx5IGRvIG5vdCB1
bmRlcnN0YW5kIHdoYXQgeW91IGFyZSByZWZlcnJpbmcgdG8gaGVyZSwgc29ycnkuICAgSSBkbwpu
b3Qgc2VlIGFueSBzeXNmcy1iYXNlZCBjb2RlIGluIHRoYXQgdGhyZWFkLgoKQW5kIHRyeSB0byB1
c2UgbG9yZS5rZXJuZWwub3JnLCBsa21sLm9yZyBkb2Vzbid0IGFsd2F5cyB3b3JrIGFuZCB3ZSBo
YXZlCm5vIGNvbnRyb2wgb3ZlciB0aGF0IDooCgo+ID4gSSBzdGlsbCBkb24ndCBrbm93IF93aHlf
IHlvdSB3YW50IHRoaXMuICBUaGUgSU9OIHN0dWZmIGlzIG5vdCBuZWVkZWQgYXMKPiA+IHRoYXQg
Y29kZSBpcyBhYm91dCB0byBiZSBkZWxldGVkLCBzbyB3aG8gZWxzZSB3YW50cyB0aGlzPyAgV2hh
dCBpcyB0aGUKPiA+IHVzZS1jYXNlIGZvciBpdCB0aGF0IGlzIHNvIGRlc3BlcmF0ZWx5IG5lZWRl
ZCB0aGF0IHBhcnNpbmcKPiA+IHlldC1hbm90aGVyLXByb2MgZmlsZSBpcyBnb2luZyB0byBzb2x2
ZSB0aGUgcHJvYmxlbT8KPiBJbiBteSBBbmRyb2lkIGRldmljZSwgdGhlcmUgYXJlIGdyYXBoaWMg
ZHJpdmVyIG1lbW9yeSwgenNtYWxsb2MgbWVtb3J5IGV4Y2VwdCBJT04uCgpPaywgc28gd2hhdCBk
b2VzIEFuZHJvaWQgaGF2ZSB0byBkbyB3aXRoIHRoaXM/Cgo+IEkgZG9uJ3Qga25vdyBvdGhlciBj
YXNlcyBpbiBvdGhlciBwbGF0Zm9ybS4KPiBOb3QgZGVzcGVyYXRlbHkgbmVlZGVkIGJ1dCBJIHRo
aW5rIHdlIG5lZWQgb25lIHVzZXJzcGFjZSBrbm9iIHRvIHNlZSBvdmVyYWxsIGhpZGRlbiBodWdl
IG1lbW9yeS4KCldoeT8gIFdobyB3YW50cyB0aGF0PyAgV2hhdCB3b3VsZCB1c2Vyc3BhY2UgZG8g
d2l0aCB0aGF0PyAgQW5kIHdoYXQKZXhhY3RseSBkbyB5b3Ugd2FudCB0byBzaG93PwoKSXMgdGhp
cyBqdXN0IGEgZGVidWdnaW5nIHRoaW5nPyAgVGhlbiB1c2UgZGVidWdmcyBmb3IgdGhhdCwgbm90
IHByb2MuCklzbid0IHRoYXQgd2hhdCB0aGUgRFJNIGRldmVsb3BlcnMgYXJlIHN0YXJ0aW5nIHRv
IGRvPwoKPiBBZGRpdGlvbmFsbHkgSSdkIGxpa2UgdG8gc2VlIGFsbCB0aG9zZSBoaWRkZW4gbWVt
b3J5IGluIE91dE9mTWVtb3J5IGxvZy4KCkhvdyBpcyBhbnl0aGluZyBoaWRkZW4sIGNhbid0IHlv
dSBzZWUgaXQgaW4gdGhlIHNsYWIgaW5mb3JtYXRpb24/Cgo+IFRoaXMgaXMgdXNlZnVsIHRvIGdl
dCBjbHVlIHRvIGZpbmQgbWVtb3J5IGhvZ2dlci4KPiBpLmUuKSBzaG93X21lbSBvbiBvb20KPiA8
Nj5bICA0MjAuODU2NDI4XSAgTWVtLUluZm86Cj4gPDY+WyAgNDIwLjg1NjQzM10gIElvblN5c3Rl
bUhlYXA6MzI4MTNrQiBac1BhZ2VzOjQ0MTE0a0IgR3JhcGhpY0RyaXZlcjo6MTMwOTFrQgo+IDw2
PlsgIDQyMC44NTY0NTBdICBhY3RpdmVfYW5vbjo5NTcyMDUgaW5hY3RpdmVfYW5vbjoxNTkzODMg
aXNvbGF0ZWRfYW5vbjowCgpTbyB3aGF0IGRvZXMgdGhpcyBzaG93IHlvdT8gIFRoYXQgc29tZW9u
ZSBpcyB0YWtpZ24gYSB0b24gb2YgSU9OIG1lbW9yeQpmb3Igc29tZSB1bmtub3duIHVzZT8gIFdo
YXQgY2FuIHlvdSBkbyB3aXRoIHRoYXQ/ICBXaGF0IHdvdWxkIHlvdSBkbwp3aXRoIHRoYXQ/CgpB
bmQgbWVtb3J5IGlzIGFsbW9zdCBuZXZlciBhc3NpZ25lZCB0byBhICJkcml2ZXIiLCBpdCBpcyBh
c3NpZ25lZCB0byBhCiJkZXZpY2UiIHRoYXQgdXNlcyBpdC4gIERyaXZlcnMgY2FuIGhhbmRsZSBt
dWx0aXBsZSBkZXZpY2VzIGF0IHRoZSBzYW1lCnRpbWUsIHNvIHdoeSB3b3VsZCB5b3UgYnJlYWsg
dGhpcyBkb3duIGJ5IGRyaXZlcnM/ICBBcmUgeW91IGFzc3VtaW5nCnRoYXQgYSBkcml2ZXIgb25s
eSB0YWxrcyB0byBvbmUgcGllY2Ugb2YgaGFyZHdhcmU/CgpJIHRoaW5rIHlvdSBuZWVkIGEgbXVj
aCBiZXR0ZXIgdXNlIGNhc2UgZm9yIGFsbCBvZiB0aGlzIG90aGVyIHRoYW4KIndvdWxkbid0IGl0
IGJlIG5pY2UgdG8gc2VlIHNvbWUgbnVtYmVycyIsIGFzIHRoYXQgaXNuJ3QgZ29pbmcgdG8gaGVs
cAphbnlvbmUgb3V0IGluIHRoZSBlbmQuCgp0aGFua3MsCgpncmVnIGstaAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0Cmtl
eGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9rZXhlYwo=
