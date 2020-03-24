Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E9F190A51
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 11:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8JxKNs4zDwpYLY2bzclnnRXKG+/akDGLETjjU0PoQM=; b=Ddqxexul/HXGtV
	T8IHn0x/1H11EvTJhzUXT4XMTtfAxbiiPj93jt11zDphvDrk45IDxrRC2fOm1rf+xMVDrU869C+aw
	QXc2euon5EbCoCpcCxygWGNMeTNNxHgUq5dxQgLgYvMAOyOFaV2jzDIyT+GCsVZYYIzsZiRhrb5VY
	nto7nkPw9cXkzmvb1njuzO5QWS/v0N53xmLdx3TzF+3Zt0mtG+ZBCxWYYZ6oHMgClMWflloRLt5LT
	iaBJim75SFfs0R7FBofOuzt7/M5Uv+h35QRG2i/8A52dblSPYZix0oMng/Ppc21wT9fbvW/vOIYG5
	25UU4tb+PLG7/C32PHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgWi-0006XR-Vk; Tue, 24 Mar 2020 10:11:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgWg-0006X3-Bf
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 10:11:15 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5CEC20775;
 Tue, 24 Mar 2020 10:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585044673;
 bh=qxQbFkvpQKNEY7WzNXo9Xl0byVovMYnxhwWOYOqVkLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x5cOK8jAB92LQpQluWsLS1p3JLzJvCG6JwPhclZD527G82OcEu+JPfrKMWHdLSBFf
 C/KP0L5Hys/rnaT0FMSUv9U8sl7Lk/lks4ezrpicMr9u4QtRIlTvyDMfsqk0dJIm2a
 lxaS4HL39yqfQTzGcRuvDAaKxQIZTwfZObSJsZ/k=
Date: Tue, 24 Mar 2020 11:11:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jaewon Kim <jaewon31.kim@samsung.com>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200324101110.GA2218981@kroah.com>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5E79CEB5.8070308@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_031114_439099_1B92512C 
X-CRM114-Status: GOOD (  18.07  )
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

T24gVHVlLCBNYXIgMjQsIDIwMjAgYXQgMDY6MTE6MTdQTSArMDkwMCwgSmFld29uIEtpbSB3cm90
ZToKPiBPbiAyMDIw64WEIDAz7JuUIDIz7J28IDE4OjUzLCBHcmVnIEtIIHdyb3RlOgo+ID4+ICtp
bnQgcmVnaXN0ZXJfbWVtaW5mb19leHRyYShhdG9taWNfbG9uZ190ICp2YWwsIGludCBzaGlmdCwg
Y29uc3QgY2hhciAqbmFtZSkKPiA+PiArewo+ID4+ICsJc3RydWN0IG1lbWluZm9fZXh0cmEgKm1l
bWluZm8sICptZW10ZW1wOwo+ID4+ICsJaW50IGxlbjsKPiA+PiArCWludCBlcnJvciA9IDA7Cj4g
Pj4gKwo+ID4+ICsJbWVtaW5mbyA9IGt6YWxsb2Moc2l6ZW9mKCptZW1pbmZvKSwgR0ZQX0tFUk5F
TCk7Cj4gPj4gKwlpZiAoIW1lbWluZm8pIHsKPiA+PiArCQllcnJvciA9IC1FTk9NRU07Cj4gPj4g
KwkJZ290byBvdXQ7Cj4gPj4gKwl9Cj4gPj4gKwo+ID4+ICsJbWVtaW5mby0+dmFsID0gdmFsOwo+
ID4+ICsJbWVtaW5mby0+c2hpZnRfZm9yX3BhZ2UgPSBzaGlmdDsKPiA+PiArCXN0cm5jcHkobWVt
aW5mby0+bmFtZSwgbmFtZSwgTkFNRV9TSVpFKTsKPiA+PiArCWxlbiA9IHN0cmxlbihtZW1pbmZv
LT5uYW1lKTsKPiA+PiArCW1lbWluZm8tPm5hbWVbbGVuXSA9ICc6JzsKPiA+PiArCXN0cm5jcHko
bWVtaW5mby0+bmFtZV9wYWQsIG1lbWluZm8tPm5hbWUsIE5BTUVfQlVGX1NJWkUpOwo+ID4+ICsJ
d2hpbGUgKCsrbGVuIDwgTkFNRV9CVUZfU0laRSAtIDEpCj4gPj4gKwkJbWVtaW5mby0+bmFtZV9w
YWRbbGVuXSA9ICcgJzsKPiA+PiArCj4gPj4gKwlzcGluX2xvY2soJm1lbWluZm9fbG9jayk7Cj4g
Pj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdShtZW10ZW1wLCAmbWVtaW5mb19oZWFkLCBsaXN0
KSB7Cj4gPj4gKwkJaWYgKG1lbXRlbXAtPnZhbCA9PSB2YWwpIHsKPiA+PiArCQkJZXJyb3IgPSAt
RUlOVkFMOwo+ID4+ICsJCQlicmVhazsKPiA+PiArCQl9Cj4gPj4gKwl9Cj4gPj4gKwlpZiAoIWVy
cm9yKQo+ID4+ICsJCWxpc3RfYWRkX3RhaWxfcmN1KCZtZW1pbmZvLT5saXN0LCAmbWVtaW5mb19o
ZWFkKTsKPiA+PiArCXNwaW5fdW5sb2NrKCZtZW1pbmZvX2xvY2spOwo+ID4gSWYgeW91IGhhdmUg
YSBsb2NrLCB3aHkgYXJlIHlvdSBuZWVkaW5nIHJjdT8KPiBJIHRoaW5rIF9yY3Ugc2hvdWxkIGJl
IHJlbW92ZWQgb3V0IG9mIGxpc3RfZm9yX2VhY2hfZW50cnlfcmN1Lgo+IEJ1dCBJJ20gY29uZnVz
ZWQgYWJvdXQgd2hhdCB5b3UgbWVhbnQuCj4gSSB1c2VkIHJjdV9yZWFkX2xvY2sgb24gX19tZW1p
bmZvX2V4dHJhLAo+IGFuZCBJIHRoaW5rIHNwaW5fbG9jayBpcyBhbHNvIG5lZWRlZCBmb3IgYWRk
aXRpb24gYW5kIGRlbGV0aW9uIHRvIGhhbmRsZSBtdWx0aXBsZSBtb2RpZmllcnMuCgpJZiB0aGF0
J3MgdGhlIGNhc2UsIHRoZW4gdGhhdCdzIGZpbmUsIGl0IGp1c3QgZGlkbid0IHNlZW0gbGlrZSB0
aGF0IHdhcwpuZWVkZWQuICBPciBJIG1pZ2h0IGhhdmUgYmVlbiByZWFkaW5nIHlvdXIgcmN1IGxv
Z2ljIGluY29ycmVjdGx5Li4uCgo+ID4+ICsJaWYgKGVycm9yKQo+ID4+ICsJCWtmcmVlKG1lbWlu
Zm8pOwo+ID4+ICtvdXQ6Cj4gPj4gKwo+ID4+ICsJcmV0dXJuIGVycm9yOwo+ID4+ICt9Cj4gPj4g
K0VYUE9SVF9TWU1CT0wocmVnaXN0ZXJfbWVtaW5mb19leHRyYSk7Cj4gPiBFWFBPUlRfU1lNQk9M
X0dQTCgpPyAgSSBoYXZlIHRvIGFzayA6KQo+IEkgY2FuIHVzZSBFWFBPUlRfU1lNQk9MX0dQTC4K
PiA+Cj4gPiB0aGFua3MsCj4gPgo+ID4gZ3JlZyBrLWgKPiA+Cj4gPgo+IAo+IEhlbGxvCj4gVGhh
bmsgeW91IGZvciB5b3VyIGNvbW1lbnQuCj4gCj4gQnkgdGhlIHdheSB0aGVyZSB3YXMgbm90IHJl
c29sdmVkIGRpc2N1c3Npb24gb24gdjEgcGF0Y2ggYXMgSSBtZW50aW9uZWQgb24gY292ZXIgcGFn
ZS4KPiBJJ2QgbGlrZSB0byBoZWFyIHlvdXIgb3BpbmlvbiBvbiB0aGlzIC9wcm9jL21lbWluZm9f
ZXh0cmEgbm9kZS4KCkkgdGhpbmsgaXQgaXMgdGhlIHByb3BhZ2F0aW9uIG9mIGFuIG9sZCBhbmQg
b2Jzb2xldGUgaW50ZXJmYWNlIHRoYXQgeW91CndpbGwgaGF2ZSB0byBzdXBwb3J0IGZvciB0aGUg
bmV4dCAyMCsgeWVhcnMgYW5kIHlldCBub3QgYWN0dWFsbHkgYmUKdXNlZnVsIDopCgo+IERvIHlv
dSB0aGluayB0aGlzIGlzIG1lYW5pbmdmdWwgb3IgY2Fubm90IGNvLWV4aXN0IHdpdGggb3RoZXIg
ZnV0dXJlCj4gc3lzZnMgYmFzZWQgQVBJLgoKV2hhdCBzeXNmcy1iYXNlZCBBUEk/CgpJIHN0aWxs
IGRvbid0IGtub3cgX3doeV8geW91IHdhbnQgdGhpcy4gIFRoZSBJT04gc3R1ZmYgaXMgbm90IG5l
ZWRlZCBhcwp0aGF0IGNvZGUgaXMgYWJvdXQgdG8gYmUgZGVsZXRlZCwgc28gd2hvIGVsc2Ugd2Fu
dHMgdGhpcz8gIFdoYXQgaXMgdGhlCnVzZS1jYXNlIGZvciBpdCB0aGF0IGlzIHNvIGRlc3BlcmF0
ZWx5IG5lZWRlZCB0aGF0IHBhcnNpbmcKeWV0LWFub3RoZXItcHJvYyBmaWxlIGlzIGdvaW5nIHRv
IHNvbHZlIHRoZSBwcm9ibGVtPwoKdGhhbmtzLAoKZ3JlZyBrLWgKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8va2V4ZWMK
