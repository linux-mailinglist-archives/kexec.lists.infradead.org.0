Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD4C19747D
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 08:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTn9erCcS8jif538qzqDTX7CnffWVR2O1nFD2GkGnV4=; b=HimsW3sPHRJN/q
	dwBffgramDhDoVS1iP7gQUb2uTGsdZKa/pDa4bKohcrpWcFputgKPv1ebKDwVYeJtkwdmm/BNSUGy
	VDbXx0mRs/gi7ZAr7ShI9EmF0a1XN4eUlddUFUPu0DY2+jDTDg0NUfaDYxVwIJ0bght9/W0z0HAOm
	ViQ6jieAEkVgxWzZMyjerRjYLX5pjkO8rKkZmXn0i+Rgu+9fw19w5omMdJIdC3C9pv9V0bdMcnWgn
	hEIjt7mcCDPknbhQF6NtaRNRVmrBe74iedYrB6vn7D9oGiz0q1D+Ycl3ttGI22jxsijqXuCmE/sR0
	4aQBINrwBbM1Ly4wL9iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIntV-00060c-NX; Mon, 30 Mar 2020 06:27:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIntS-000608-Ro
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 06:27:32 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D39A20786;
 Mon, 30 Mar 2020 06:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585549650;
 bh=6IiawiuXQLOjYANKVy5JYWeqTQaiqOyWrx4qr3Digr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B61jFnJ+19AmO4MzCyD6LVfNrxowHq3YDcHRRUznqVi9L5XTDcHgCC6XcAZp5jN8X
 QCrLXzMADoQQ7lEX+nnmZdu4wZED0DklHDsN4hYViRGm4cpxSDVmr6tE6m5428rO2W
 yi+IjNk0FOdDbotQpAaN4H7s/20F7CxgwwvUW4mI=
Date: Sun, 29 Mar 2020 11:19:23 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200329081923.GD2454444@unreal>
References: <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
 <20200324101110.GA2218981@kroah.com> <5E79F102.9080405@samsung.com>
 <20200324114645.GA2330984@kroah.com> <5E7A02BC.7020803@samsung.com>
 <20200329071907.GB2454444@unreal>
 <20200329072304.GA3909421@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329072304.GA3909421@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_232730_940539_DADE68C3 
X-CRM114-Status: GOOD (  28.58  )
X-Spam-Score: -4.6 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jaewon Kim <jaewon31.kim@samsung.com>, sergey.senozhatsky.work@gmail.com,
 bhe@redhat.com, linux-mm@kvack.org, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 sumit.semwal@linaro.org, minchan@kernel.org, ngupta@vflare.org,
 jaewon31.kim@gmail.com, akpm@linux-foundation.org, labbott@redhat.com,
 adobriyan@gmail.com, vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXIgMjksIDIwMjAgYXQgMDk6MjM6MDRBTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBTdW4sIE1hciAyOSwgMjAyMCBhdCAxMDoxOTowN0FNICswMzAwLCBMZW9uIFJvbWFub3Zz
a3kgd3JvdGU6Cj4gPiBPbiBUdWUsIE1hciAyNCwgMjAyMCBhdCAwOTo1MzoxNlBNICswOTAwLCBK
YWV3b24gS2ltIHdyb3RlOgo+ID4gPgo+ID4gPgo+ID4gPiBPbiAyMDIw64WEIDAz7JuUIDI07J28
IDIwOjQ2LCBHcmVnIEtIIHdyb3RlOgo+ID4gPiA+IE9uIFR1ZSwgTWFyIDI0LCAyMDIwIGF0IDA4
OjM3OjM4UE0gKzA5MDAsIEphZXdvbiBLaW0gd3JvdGU6Cj4gPiA+ID4+Cj4gPiA+ID4+IE9uIDIw
MjDrhYQgMDPsm5QgMjTsnbwgMTk6MTEsIEdyZWcgS0ggd3JvdGU6Cj4gPiA+ID4+PiBPbiBUdWUs
IE1hciAyNCwgMjAyMCBhdCAwNjoxMToxN1BNICswOTAwLCBKYWV3b24gS2ltIHdyb3RlOgo+ID4g
PiA+Pj4+IE9uIDIwMjDrhYQgMDPsm5QgMjPsnbwgMTg6NTMsIEdyZWcgS0ggd3JvdGU6Cj4gPiA+
ID4+Pj4+PiAraW50IHJlZ2lzdGVyX21lbWluZm9fZXh0cmEoYXRvbWljX2xvbmdfdCAqdmFsLCBp
bnQgc2hpZnQsIGNvbnN0IGNoYXIgKm5hbWUpCj4gPiA+ID4+Pj4+PiArewo+ID4gPiA+Pj4+Pj4g
KwlzdHJ1Y3QgbWVtaW5mb19leHRyYSAqbWVtaW5mbywgKm1lbXRlbXA7Cj4gPiA+ID4+Pj4+PiAr
CWludCBsZW47Cj4gPiA+ID4+Pj4+PiArCWludCBlcnJvciA9IDA7Cj4gPiA+ID4+Pj4+PiArCj4g
PiA+ID4+Pj4+PiArCW1lbWluZm8gPSBremFsbG9jKHNpemVvZigqbWVtaW5mbyksIEdGUF9LRVJO
RUwpOwo+ID4gPiA+Pj4+Pj4gKwlpZiAoIW1lbWluZm8pIHsKPiA+ID4gPj4+Pj4+ICsJCWVycm9y
ID0gLUVOT01FTTsKPiA+ID4gPj4+Pj4+ICsJCWdvdG8gb3V0Owo+ID4gPiA+Pj4+Pj4gKwl9Cj4g
PiA+ID4+Pj4+PiArCj4gPiA+ID4+Pj4+PiArCW1lbWluZm8tPnZhbCA9IHZhbDsKPiA+ID4gPj4+
Pj4+ICsJbWVtaW5mby0+c2hpZnRfZm9yX3BhZ2UgPSBzaGlmdDsKPiA+ID4gPj4+Pj4+ICsJc3Ry
bmNweShtZW1pbmZvLT5uYW1lLCBuYW1lLCBOQU1FX1NJWkUpOwo+ID4gPiA+Pj4+Pj4gKwlsZW4g
PSBzdHJsZW4obWVtaW5mby0+bmFtZSk7Cj4gPiA+ID4+Pj4+PiArCW1lbWluZm8tPm5hbWVbbGVu
XSA9ICc6JzsKPiA+ID4gPj4+Pj4+ICsJc3RybmNweShtZW1pbmZvLT5uYW1lX3BhZCwgbWVtaW5m
by0+bmFtZSwgTkFNRV9CVUZfU0laRSk7Cj4gPiA+ID4+Pj4+PiArCXdoaWxlICgrK2xlbiA8IE5B
TUVfQlVGX1NJWkUgLSAxKQo+ID4gPiA+Pj4+Pj4gKwkJbWVtaW5mby0+bmFtZV9wYWRbbGVuXSA9
ICcgJzsKPiA+ID4gPj4+Pj4+ICsKPiA+ID4gPj4+Pj4+ICsJc3Bpbl9sb2NrKCZtZW1pbmZvX2xv
Y2spOwo+ID4gPiA+Pj4+Pj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdShtZW10ZW1wLCAmbWVt
aW5mb19oZWFkLCBsaXN0KSB7Cj4gPiA+ID4+Pj4+PiArCQlpZiAobWVtdGVtcC0+dmFsID09IHZh
bCkgewo+ID4gPiA+Pj4+Pj4gKwkJCWVycm9yID0gLUVJTlZBTDsKPiA+ID4gPj4+Pj4+ICsJCQli
cmVhazsKPiA+ID4gPj4+Pj4+ICsJCX0KPiA+ID4gPj4+Pj4+ICsJfQo+ID4gPiA+Pj4+Pj4gKwlp
ZiAoIWVycm9yKQo+ID4gPiA+Pj4+Pj4gKwkJbGlzdF9hZGRfdGFpbF9yY3UoJm1lbWluZm8tPmxp
c3QsICZtZW1pbmZvX2hlYWQpOwo+ID4gPiA+Pj4+Pj4gKwlzcGluX3VubG9jaygmbWVtaW5mb19s
b2NrKTsKPiA+ID4gPj4+Pj4gSWYgeW91IGhhdmUgYSBsb2NrLCB3aHkgYXJlIHlvdSBuZWVkaW5n
IHJjdT8KPiA+ID4gPj4+PiBJIHRoaW5rIF9yY3Ugc2hvdWxkIGJlIHJlbW92ZWQgb3V0IG9mIGxp
c3RfZm9yX2VhY2hfZW50cnlfcmN1Lgo+ID4gPiA+Pj4+IEJ1dCBJJ20gY29uZnVzZWQgYWJvdXQg
d2hhdCB5b3UgbWVhbnQuCj4gPiA+ID4+Pj4gSSB1c2VkIHJjdV9yZWFkX2xvY2sgb24gX19tZW1p
bmZvX2V4dHJhLAo+ID4gPiA+Pj4+IGFuZCBJIHRoaW5rIHNwaW5fbG9jayBpcyBhbHNvIG5lZWRl
ZCBmb3IgYWRkaXRpb24gYW5kIGRlbGV0aW9uIHRvIGhhbmRsZSBtdWx0aXBsZSBtb2RpZmllcnMu
Cj4gPiA+ID4+PiBJZiB0aGF0J3MgdGhlIGNhc2UsIHRoZW4gdGhhdCdzIGZpbmUsIGl0IGp1c3Qg
ZGlkbid0IHNlZW0gbGlrZSB0aGF0IHdhcwo+ID4gPiA+Pj4gbmVlZGVkLiAgT3IgSSBtaWdodCBo
YXZlIGJlZW4gcmVhZGluZyB5b3VyIHJjdSBsb2dpYyBpbmNvcnJlY3RseS4uLgo+ID4gPiA+Pj4K
PiA+ID4gPj4+Pj4+ICsJaWYgKGVycm9yKQo+ID4gPiA+Pj4+Pj4gKwkJa2ZyZWUobWVtaW5mbyk7
Cj4gPiA+ID4+Pj4+PiArb3V0Ogo+ID4gPiA+Pj4+Pj4gKwo+ID4gPiA+Pj4+Pj4gKwlyZXR1cm4g
ZXJyb3I7Cj4gPiA+ID4+Pj4+PiArfQo+ID4gPiA+Pj4+Pj4gK0VYUE9SVF9TWU1CT0wocmVnaXN0
ZXJfbWVtaW5mb19leHRyYSk7Cj4gPiA+ID4+Pj4+IEVYUE9SVF9TWU1CT0xfR1BMKCk/ICBJIGhh
dmUgdG8gYXNrIDopCj4gPiA+ID4+Pj4gSSBjYW4gdXNlIEVYUE9SVF9TWU1CT0xfR1BMLgo+ID4g
PiA+Pj4+PiB0aGFua3MsCj4gPiA+ID4+Pj4+Cj4gPiA+ID4+Pj4+IGdyZWcgay1oCj4gPiA+ID4+
Pj4+Cj4gPiA+ID4+Pj4+Cj4gPiA+ID4+Pj4gSGVsbG8KPiA+ID4gPj4+PiBUaGFuayB5b3UgZm9y
IHlvdXIgY29tbWVudC4KPiA+ID4gPj4+Pgo+ID4gPiA+Pj4+IEJ5IHRoZSB3YXkgdGhlcmUgd2Fz
IG5vdCByZXNvbHZlZCBkaXNjdXNzaW9uIG9uIHYxIHBhdGNoIGFzIEkgbWVudGlvbmVkIG9uIGNv
dmVyIHBhZ2UuCj4gPiA+ID4+Pj4gSSdkIGxpa2UgdG8gaGVhciB5b3VyIG9waW5pb24gb24gdGhp
cyAvcHJvYy9tZW1pbmZvX2V4dHJhIG5vZGUuCj4gPiA+ID4+PiBJIHRoaW5rIGl0IGlzIHRoZSBw
cm9wYWdhdGlvbiBvZiBhbiBvbGQgYW5kIG9ic29sZXRlIGludGVyZmFjZSB0aGF0IHlvdQo+ID4g
PiA+Pj4gd2lsbCBoYXZlIHRvIHN1cHBvcnQgZm9yIHRoZSBuZXh0IDIwKyB5ZWFycyBhbmQgeWV0
IG5vdCBhY3R1YWxseSBiZQo+ID4gPiA+Pj4gdXNlZnVsIDopCj4gPiA+ID4+Pgo+ID4gPiA+Pj4+
IERvIHlvdSB0aGluayB0aGlzIGlzIG1lYW5pbmdmdWwgb3IgY2Fubm90IGNvLWV4aXN0IHdpdGgg
b3RoZXIgZnV0dXJlCj4gPiA+ID4+Pj4gc3lzZnMgYmFzZWQgQVBJLgo+ID4gPiA+Pj4gV2hhdCBz
eXNmcy1iYXNlZCBBUEk/Cj4gPiA+ID4+IFBsZWFzZSByZWZlciB0byBtYWlsIHRocmVhZCBvbiB2
MSBwYXRjaCBzZXQgLSBodHRwczovL3Byb3RlY3QyLmZpcmVleWUuY29tL3VybD9rPTE2ZTNhY2Nj
LTRiMmY2NTQ4LTE2ZTIyNzgzLTBjYzQ3YWE4ZjViYS05MzVmZTgyOGFjMmY2NjU2JnU9aHR0cHM6
Ly9sa21sLm9yZy9sa21sL2ZhbmN5LzIwMjAvMy8xMC8yMTAyCj4gPiA+ID4+IGVzcGVjaWFsbHkg
ZGlzY3Vzc2lvbiB3aXRoIExlb24gUm9tYW5vdnNreSBvbiBodHRwczovL3Byb3RlY3QyLmZpcmVl
eWUuY29tL3VybD9rPTc0MjA4ZWQ5LTI5ZWM0NzVkLTc0MjEwNTk2LTBjYzQ3YWE4ZjViYS0wYmQ0
ZWY0ODkzMWZlYzk1JnU9aHR0cHM6Ly9sa21sLm9yZy9sa21sL2ZhbmN5LzIwMjAvMy8xNi8xNDAK
PiA+ID4gPiBJIHJlYWxseSBkbyBub3QgdW5kZXJzdGFuZCB3aGF0IHlvdSBhcmUgcmVmZXJyaW5n
IHRvIGhlcmUsIHNvcnJ5LiAgIEkgZG8KPiA+ID4gPiBub3Qgc2VlIGFueSBzeXNmcy1iYXNlZCBj
b2RlIGluIHRoYXQgdGhyZWFkLgo+ID4gPiBTb3JyeS4gSSBhbHNvIGRpZCBub3Qgc2VlIGFjdHVh
bCBjb2RlLgo+ID4gPiBIZWxsbyBMZW9uIFJvbWFub3Zza3ksIGNvdWxkIHlvdSBlbGFib3JhdGUg
eW91ciBwbGFuIHJlZ2FyZGluZyBzeXNmcyBzdHVmZj8KPiA+Cj4gPiBTb3JyeSBmb3IgYmVpbmcg
bGF0ZSwgSSB3YXNuJ3QgaW4gIlRPOiIsIHNvIG1pc3NlZCB0aGUgd2hvbGUgZGlzY3Vzc2lvbi4K
PiA+Cj4gPiBHcmVnLAo+ID4KPiA+IFdlIG5lZWQgdGhlIGV4cG9zZWQgaW5mb3JtYXRpb24gZm9y
IHRoZSBtZW1vcnkgb3B0aW1pemF0aW9ucyAoZGVidWcsIG5vdAo+ID4gcHJvZHVjdGlvbikgb2Yg
b3VyIGhpZ2ggc3BlZWQgTklDcy4gT3VyIGRldmljZXMgKG1seDUpIGFsbG9jYXRlcyBhIGxvdCBv
Zgo+ID4gbWVtb3J5LCBzbyBvcHRpbWl6YXRpb24gdGhlcmUgY2FuIGhlbHAgdXMgdG8gc2NhbGUg
aW4gU1JJT1YgbW9kZSBlYXNpZXIgYW5kCj4gPiBiZSBsZXNzIGNvbnN0cmFpbnQgYnkgdGhlIG1l
bW9yeS4KPgo+IEdyZWF0LCB0aGVuIHVzZSBkZWJ1Z2ZzIGFuZCBleHBvc2Ugd2hhdCBldmVyIHlv
dSB3YW50IGluIHdoYXQgZXZlciB3YXkKPiB5b3Ugd2FudCwgbm8gcmVzdHJpY3Rpb25zIHRoZXJl
LCB5b3UgZG8gbm90IG5lZWQgYW55IHR5cGUgb2Yga2VybmVsLXdpZGUKPiAvcHJvYyBmaWxlIGZv
ciB0aGF0IHRvZGF5LgoKTm8gYXJndWUgaGVyZSwganVzdCBnYXZlIHlvdSBhbiBleGFtcGxlIHdo
eSBKYWV3b24ncyBpZGVhIGlzIHdvcnRoIHRvIGV4cGxvcmUuCgo+Cj4gPiBJIHdhbnQgdG8gZW1w
aGFzaXplIHRoYXQgSSBkb24ndCBsaWtlIGlkZWEgb2YgZXh0ZW5kaW5nIC9wcm9jLyogaW50ZXJm
YWNlCj4gPiBiZWNhdXNlIGl0IGlzIGdvaW5nIHRvIGJlIHBhaW5mdWwgdG8gZ3JlcCBvbiBsYXJn
ZSBtYWNoaW5lcyB3aXRoIG1hbnkKPiA+IGRldmljZXMuIEFuZCBJIGRvbid0IGxpa2UgdGhlIGlk
ZWEgdGhhdCBldmVyeSBkcml2ZXIgd2lsbCBuZWVkIHRvIHJlZ2lzdGVyCj4gPiBpbnRvIHRoaXMg
aW50ZXJmYWNlLCBiZWNhdXNlIGl0IHdpbGwgYmUgYWJ1c2VkIGFsbW9zdCBpbW1lZGlhdGVseS4K
Pgo+IEkgYWdyZWUuCj4KPiA+IE15IHByb3Bvc2FsIHdhcyB0byBjcmVhdGUgbmV3IHN5c2ZzIGZp
bGUgYnkgZHJpdmVyL2NvcmUgYW5kIHB1dCBhbGwKPiA+IGluZm9ybWF0aW9uIGF1dG9tYXRpY2Fs
bHkgdGhlcmUsIGZvciBleGFtcGxlLCBpdCBjYW4gYmUKPiA+IC9zeXMvZGV2aWNlcy9wY2kwMDAw
OjAwLzAwMDA6MDA6MGMuMC9tZW1pbmZvCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXl5eXl5eXgo+Cj4gTm9wZSwgYWdhaW4sIHVzZSBkZWJ1Z2ZzLCBhcyBzeXNmcyBp
cyBvbmx5IG9uZS12YWx1ZS1wZXItZmlsZS4KCkV2ZXJ5dGhpbmcgdGhhdCBpcyBub3QgL3Byb2Mg
YW5kIG9uZSBnbG9iYWwgZmlsZSBmb3Igd2hvbGUga2VybmVsCmlzIGZpbmUgYnkgbWUuIERlYnVn
ZnMgaXMgbW9yZSB0aGFuIGVub3VnaCBmb3IgdXMuCgpUaGFua3MKCj4KPiB0aGFua3MsCj4KPiBn
cmVnIGstaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
a2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
