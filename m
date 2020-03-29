Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA6B196B95
	for <lists+kexec@lfdr.de>; Sun, 29 Mar 2020 09:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psvX6nCl+TiXof2o+SeHewkK+08mh96rciqCEY+7zYo=; b=b5vWXxn814DoE2
	Wo6zOJBMIl8ekZUU9JG7Xbxbkln0bB4yh2dGq1+Pcz44X5GO9QhuLz1LhKXUOUfYdwun05Knvmxpo
	nJlfcNkfi+zEPcxkxTDlnAt5c2bg/yp/qGcPdELoQ6ceBztdBEIuOu0qKmRgNlgWIsYWiTQqWn8OU
	qysUiJJP8cpS119poM12LExPgEaA4ROK5MTXElfMQfpQC05rHSHqEBxvMycEbrkCTCklpep1IMrfo
	YeDXdK3lUQp2F31JheahH2iAEyVdfoYkIT6YayrgoEUgs7bK2rqUEaIjpQ6+kB8C7ywZ+PaKLnx+/
	Oq9SgTxLViaYlhJUaM8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jISE2-0004XI-Ve; Sun, 29 Mar 2020 07:19:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jISDw-0004WS-O2
 for kexec@lists.infradead.org; Sun, 29 Mar 2020 07:19:14 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDCD620748;
 Sun, 29 Mar 2020 07:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585466351;
 bh=X3/JmZQnZmXAjPb34qJAtFnIg9UxjJZFWi6e1u3/s8o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rrk/WBcxa0aySYOzNkL/+6q6kEKWU8t+upenVycMvwovM8zNmKR7rh2MqqseymlXC
 oYdlPYhtGczT+tFxM/bZqQECaRwKZt3kcwYPL/jo1kk+3SKKIcW60rlLmXVHURr+kI
 5S3+TiE/u4DAQdc7wjnQwz2nV1tzOaUBK3QB+6pk=
Date: Sun, 29 Mar 2020 10:19:07 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jaewon Kim <jaewon31.kim@samsung.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200329071907.GB2454444@unreal>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
 <20200324101110.GA2218981@kroah.com> <5E79F102.9080405@samsung.com>
 <20200324114645.GA2330984@kroah.com> <5E7A02BC.7020803@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5E7A02BC.7020803@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_001912_832376_45C3AFB2 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sergey.senozhatsky.work@gmail.com, bhe@redhat.com, linux-mm@kvack.org,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, minchan@kernel.org,
 ngupta@vflare.org, jaewon31.kim@gmail.com, akpm@linux-foundation.org,
 labbott@redhat.com, adobriyan@gmail.com, vbabka@suse.cz, kasong@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXIgMjQsIDIwMjAgYXQgMDk6NTM6MTZQTSArMDkwMCwgSmFld29uIEtpbSB3cm90
ZToKPgo+Cj4gT24gMjAyMOuFhCAwM+yblCAyNOydvCAyMDo0NiwgR3JlZyBLSCB3cm90ZToKPiA+
IE9uIFR1ZSwgTWFyIDI0LCAyMDIwIGF0IDA4OjM3OjM4UE0gKzA5MDAsIEphZXdvbiBLaW0gd3Jv
dGU6Cj4gPj4KPiA+PiBPbiAyMDIw64WEIDAz7JuUIDI07J28IDE5OjExLCBHcmVnIEtIIHdyb3Rl
Ogo+ID4+PiBPbiBUdWUsIE1hciAyNCwgMjAyMCBhdCAwNjoxMToxN1BNICswOTAwLCBKYWV3b24g
S2ltIHdyb3RlOgo+ID4+Pj4gT24gMjAyMOuFhCAwM+yblCAyM+ydvCAxODo1MywgR3JlZyBLSCB3
cm90ZToKPiA+Pj4+Pj4gK2ludCByZWdpc3Rlcl9tZW1pbmZvX2V4dHJhKGF0b21pY19sb25nX3Qg
KnZhbCwgaW50IHNoaWZ0LCBjb25zdCBjaGFyICpuYW1lKQo+ID4+Pj4+PiArewo+ID4+Pj4+PiAr
CXN0cnVjdCBtZW1pbmZvX2V4dHJhICptZW1pbmZvLCAqbWVtdGVtcDsKPiA+Pj4+Pj4gKwlpbnQg
bGVuOwo+ID4+Pj4+PiArCWludCBlcnJvciA9IDA7Cj4gPj4+Pj4+ICsKPiA+Pj4+Pj4gKwltZW1p
bmZvID0ga3phbGxvYyhzaXplb2YoKm1lbWluZm8pLCBHRlBfS0VSTkVMKTsKPiA+Pj4+Pj4gKwlp
ZiAoIW1lbWluZm8pIHsKPiA+Pj4+Pj4gKwkJZXJyb3IgPSAtRU5PTUVNOwo+ID4+Pj4+PiArCQln
b3RvIG91dDsKPiA+Pj4+Pj4gKwl9Cj4gPj4+Pj4+ICsKPiA+Pj4+Pj4gKwltZW1pbmZvLT52YWwg
PSB2YWw7Cj4gPj4+Pj4+ICsJbWVtaW5mby0+c2hpZnRfZm9yX3BhZ2UgPSBzaGlmdDsKPiA+Pj4+
Pj4gKwlzdHJuY3B5KG1lbWluZm8tPm5hbWUsIG5hbWUsIE5BTUVfU0laRSk7Cj4gPj4+Pj4+ICsJ
bGVuID0gc3RybGVuKG1lbWluZm8tPm5hbWUpOwo+ID4+Pj4+PiArCW1lbWluZm8tPm5hbWVbbGVu
XSA9ICc6JzsKPiA+Pj4+Pj4gKwlzdHJuY3B5KG1lbWluZm8tPm5hbWVfcGFkLCBtZW1pbmZvLT5u
YW1lLCBOQU1FX0JVRl9TSVpFKTsKPiA+Pj4+Pj4gKwl3aGlsZSAoKytsZW4gPCBOQU1FX0JVRl9T
SVpFIC0gMSkKPiA+Pj4+Pj4gKwkJbWVtaW5mby0+bmFtZV9wYWRbbGVuXSA9ICcgJzsKPiA+Pj4+
Pj4gKwo+ID4+Pj4+PiArCXNwaW5fbG9jaygmbWVtaW5mb19sb2NrKTsKPiA+Pj4+Pj4gKwlsaXN0
X2Zvcl9lYWNoX2VudHJ5X3JjdShtZW10ZW1wLCAmbWVtaW5mb19oZWFkLCBsaXN0KSB7Cj4gPj4+
Pj4+ICsJCWlmIChtZW10ZW1wLT52YWwgPT0gdmFsKSB7Cj4gPj4+Pj4+ICsJCQllcnJvciA9IC1F
SU5WQUw7Cj4gPj4+Pj4+ICsJCQlicmVhazsKPiA+Pj4+Pj4gKwkJfQo+ID4+Pj4+PiArCX0KPiA+
Pj4+Pj4gKwlpZiAoIWVycm9yKQo+ID4+Pj4+PiArCQlsaXN0X2FkZF90YWlsX3JjdSgmbWVtaW5m
by0+bGlzdCwgJm1lbWluZm9faGVhZCk7Cj4gPj4+Pj4+ICsJc3Bpbl91bmxvY2soJm1lbWluZm9f
bG9jayk7Cj4gPj4+Pj4gSWYgeW91IGhhdmUgYSBsb2NrLCB3aHkgYXJlIHlvdSBuZWVkaW5nIHJj
dT8KPiA+Pj4+IEkgdGhpbmsgX3JjdSBzaG91bGQgYmUgcmVtb3ZlZCBvdXQgb2YgbGlzdF9mb3Jf
ZWFjaF9lbnRyeV9yY3UuCj4gPj4+PiBCdXQgSSdtIGNvbmZ1c2VkIGFib3V0IHdoYXQgeW91IG1l
YW50Lgo+ID4+Pj4gSSB1c2VkIHJjdV9yZWFkX2xvY2sgb24gX19tZW1pbmZvX2V4dHJhLAo+ID4+
Pj4gYW5kIEkgdGhpbmsgc3Bpbl9sb2NrIGlzIGFsc28gbmVlZGVkIGZvciBhZGRpdGlvbiBhbmQg
ZGVsZXRpb24gdG8gaGFuZGxlIG11bHRpcGxlIG1vZGlmaWVycy4KPiA+Pj4gSWYgdGhhdCdzIHRo
ZSBjYXNlLCB0aGVuIHRoYXQncyBmaW5lLCBpdCBqdXN0IGRpZG4ndCBzZWVtIGxpa2UgdGhhdCB3
YXMKPiA+Pj4gbmVlZGVkLiAgT3IgSSBtaWdodCBoYXZlIGJlZW4gcmVhZGluZyB5b3VyIHJjdSBs
b2dpYyBpbmNvcnJlY3RseS4uLgo+ID4+Pgo+ID4+Pj4+PiArCWlmIChlcnJvcikKPiA+Pj4+Pj4g
KwkJa2ZyZWUobWVtaW5mbyk7Cj4gPj4+Pj4+ICtvdXQ6Cj4gPj4+Pj4+ICsKPiA+Pj4+Pj4gKwly
ZXR1cm4gZXJyb3I7Cj4gPj4+Pj4+ICt9Cj4gPj4+Pj4+ICtFWFBPUlRfU1lNQk9MKHJlZ2lzdGVy
X21lbWluZm9fZXh0cmEpOwo+ID4+Pj4+IEVYUE9SVF9TWU1CT0xfR1BMKCk/ICBJIGhhdmUgdG8g
YXNrIDopCj4gPj4+PiBJIGNhbiB1c2UgRVhQT1JUX1NZTUJPTF9HUEwuCj4gPj4+Pj4gdGhhbmtz
LAo+ID4+Pj4+Cj4gPj4+Pj4gZ3JlZyBrLWgKPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+PiBIZWxsbwo+
ID4+Pj4gVGhhbmsgeW91IGZvciB5b3VyIGNvbW1lbnQuCj4gPj4+Pgo+ID4+Pj4gQnkgdGhlIHdh
eSB0aGVyZSB3YXMgbm90IHJlc29sdmVkIGRpc2N1c3Npb24gb24gdjEgcGF0Y2ggYXMgSSBtZW50
aW9uZWQgb24gY292ZXIgcGFnZS4KPiA+Pj4+IEknZCBsaWtlIHRvIGhlYXIgeW91ciBvcGluaW9u
IG9uIHRoaXMgL3Byb2MvbWVtaW5mb19leHRyYSBub2RlLgo+ID4+PiBJIHRoaW5rIGl0IGlzIHRo
ZSBwcm9wYWdhdGlvbiBvZiBhbiBvbGQgYW5kIG9ic29sZXRlIGludGVyZmFjZSB0aGF0IHlvdQo+
ID4+PiB3aWxsIGhhdmUgdG8gc3VwcG9ydCBmb3IgdGhlIG5leHQgMjArIHllYXJzIGFuZCB5ZXQg
bm90IGFjdHVhbGx5IGJlCj4gPj4+IHVzZWZ1bCA6KQo+ID4+Pgo+ID4+Pj4gRG8geW91IHRoaW5r
IHRoaXMgaXMgbWVhbmluZ2Z1bCBvciBjYW5ub3QgY28tZXhpc3Qgd2l0aCBvdGhlciBmdXR1cmUK
PiA+Pj4+IHN5c2ZzIGJhc2VkIEFQSS4KPiA+Pj4gV2hhdCBzeXNmcy1iYXNlZCBBUEk/Cj4gPj4g
UGxlYXNlIHJlZmVyIHRvIG1haWwgdGhyZWFkIG9uIHYxIHBhdGNoIHNldCAtIGh0dHBzOi8vcHJv
dGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9MTZlM2FjY2MtNGIyZjY1NDgtMTZlMjI3ODMtMGNjNDdh
YThmNWJhLTkzNWZlODI4YWMyZjY2NTYmdT1odHRwczovL2xrbWwub3JnL2xrbWwvZmFuY3kvMjAy
MC8zLzEwLzIxMDIKPiA+PiBlc3BlY2lhbGx5IGRpc2N1c3Npb24gd2l0aCBMZW9uIFJvbWFub3Zz
a3kgb24gaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS91cmw/az03NDIwOGVkOS0yOWVjNDc1
ZC03NDIxMDU5Ni0wY2M0N2FhOGY1YmEtMGJkNGVmNDg5MzFmZWM5NSZ1PWh0dHBzOi8vbGttbC5v
cmcvbGttbC9mYW5jeS8yMDIwLzMvMTYvMTQwCj4gPiBJIHJlYWxseSBkbyBub3QgdW5kZXJzdGFu
ZCB3aGF0IHlvdSBhcmUgcmVmZXJyaW5nIHRvIGhlcmUsIHNvcnJ5LiAgIEkgZG8KPiA+IG5vdCBz
ZWUgYW55IHN5c2ZzLWJhc2VkIGNvZGUgaW4gdGhhdCB0aHJlYWQuCj4gU29ycnkuIEkgYWxzbyBk
aWQgbm90IHNlZSBhY3R1YWwgY29kZS4KPiBIZWxsbyBMZW9uIFJvbWFub3Zza3ksIGNvdWxkIHlv
dSBlbGFib3JhdGUgeW91ciBwbGFuIHJlZ2FyZGluZyBzeXNmcyBzdHVmZj8KClNvcnJ5IGZvciBi
ZWluZyBsYXRlLCBJIHdhc24ndCBpbiAiVE86Iiwgc28gbWlzc2VkIHRoZSB3aG9sZSBkaXNjdXNz
aW9uLgoKR3JlZywKCldlIG5lZWQgdGhlIGV4cG9zZWQgaW5mb3JtYXRpb24gZm9yIHRoZSBtZW1v
cnkgb3B0aW1pemF0aW9ucyAoZGVidWcsIG5vdApwcm9kdWN0aW9uKSBvZiBvdXIgaGlnaCBzcGVl
ZCBOSUNzLiBPdXIgZGV2aWNlcyAobWx4NSkgYWxsb2NhdGVzIGEgbG90IG9mCm1lbW9yeSwgc28g
b3B0aW1pemF0aW9uIHRoZXJlIGNhbiBoZWxwIHVzIHRvIHNjYWxlIGluIFNSSU9WIG1vZGUgZWFz
aWVyIGFuZApiZSBsZXNzIGNvbnN0cmFpbnQgYnkgdGhlIG1lbW9yeS4KCkkgd2FudCB0byBlbXBo
YXNpemUgdGhhdCBJIGRvbid0IGxpa2UgaWRlYSBvZiBleHRlbmRpbmcgL3Byb2MvKiBpbnRlcmZh
Y2UKYmVjYXVzZSBpdCBpcyBnb2luZyB0byBiZSBwYWluZnVsIHRvIGdyZXAgb24gbGFyZ2UgbWFj
aGluZXMgd2l0aCBtYW55CmRldmljZXMuIEFuZCBJIGRvbid0IGxpa2UgdGhlIGlkZWEgdGhhdCBl
dmVyeSBkcml2ZXIgd2lsbCBuZWVkIHRvIHJlZ2lzdGVyCmludG8gdGhpcyBpbnRlcmZhY2UsIGJl
Y2F1c2UgaXQgd2lsbCBiZSBhYnVzZWQgYWxtb3N0IGltbWVkaWF0ZWx5LgoKTXkgcHJvcG9zYWwg
d2FzIHRvIGNyZWF0ZSBuZXcgc3lzZnMgZmlsZSBieSBkcml2ZXIvY29yZSBhbmQgcHV0IGFsbApp
bmZvcm1hdGlvbiBhdXRvbWF0aWNhbGx5IHRoZXJlLCBmb3IgZXhhbXBsZSwgaXQgY2FuIGJlCi9z
eXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MGMuMC9tZW1pbmZvCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBeXl5eXl5eCgpUaGFua3MKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8va2V4ZWMK
