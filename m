Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50731196BA0
	for <lists+kexec@lfdr.de>; Sun, 29 Mar 2020 09:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/SdTdyarzXI9WzwOHv7fjnvnslEuuIPrpQWPwS3EF0=; b=t6UodYfbXVqcnI
	f5FfEgfMDisOlBUDKy4UTCVh5Y7u/rALSESxzLFWmCPLC0IxACNq4JXsH2lWozmuZeGdfbgS0k3LL
	yPcJubgeqGbynjQBFSSMwJVlRuq+C0DOppWq8c9DXU0lpG6BRKkrhvG8PL4WkjjM/1SDnKQICfmqR
	5CXjJN/ausGntmToUauJ4dV+2kJfJjpmP+t7G1Fxpkubb77LnXQ7hZKmWZDIQLXFzjNjiU8YJ9yZR
	CkhqiiuRDx2OOHEM8YJCuAhxo6bFP+6SX+7cf3KsC5YY1vzqbQwYYWBRBD9ruNIhsLrDdDj1qAM3z
	MAzoYPzkQLhhnZvQGcjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jISHp-0005xN-Pv; Sun, 29 Mar 2020 07:23:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jISHl-0005wT-N8
 for kexec@lists.infradead.org; Sun, 29 Mar 2020 07:23:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9057320748;
 Sun, 29 Mar 2020 07:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585466588;
 bh=pYRVbuBb5qkU8mIDMvM9P+PnyRnhYJ9Ioj9Q4SdIUHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Hhw84d8vq304G7LOdUQ6QR19pDWmynfURj4cOG9t45qWXx4SOoGzVzxayBlFOCnlh
 YH3NtgjpA8FmgQkMtVpKHdT7ji3D5tjWqm8bqJtENK90x44zSDo0BncPyghfsFXJcG
 8F3zGY3mZBTBlCHqp/Hy/u0s28idN2z10A6t0LY0=
Date: Sun, 29 Mar 2020 09:23:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [RFC PATCH v2 1/3] meminfo_extra: introduce meminfo extra
Message-ID: <20200329072304.GA3909421@kroah.com>
References: <20200323080503.6224-1-jaewon31.kim@samsung.com>
 <CGME20200323080508epcas1p387c9c19b480da53be40fe5d51e76a477@epcas1p3.samsung.com>
 <20200323080503.6224-2-jaewon31.kim@samsung.com>
 <20200323095344.GB425358@kroah.com> <5E79CEB5.8070308@samsung.com>
 <20200324101110.GA2218981@kroah.com> <5E79F102.9080405@samsung.com>
 <20200324114645.GA2330984@kroah.com> <5E7A02BC.7020803@samsung.com>
 <20200329071907.GB2454444@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329071907.GB2454444@unreal>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_002309_800102_9B3983F8 
X-CRM114-Status: GOOD (  24.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gU3VuLCBNYXIgMjksIDIwMjAgYXQgMTA6MTk6MDdBTSArMDMwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOgo+IE9uIFR1ZSwgTWFyIDI0LCAyMDIwIGF0IDA5OjUzOjE2UE0gKzA5MDAsIEphZXdv
biBLaW0gd3JvdGU6Cj4gPgo+ID4KPiA+IE9uIDIwMjDrhYQgMDPsm5QgMjTsnbwgMjA6NDYsIEdy
ZWcgS0ggd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgTWFyIDI0LCAyMDIwIGF0IDA4OjM3OjM4UE0gKzA5
MDAsIEphZXdvbiBLaW0gd3JvdGU6Cj4gPiA+Pgo+ID4gPj4gT24gMjAyMOuFhCAwM+yblCAyNOyd
vCAxOToxMSwgR3JlZyBLSCB3cm90ZToKPiA+ID4+PiBPbiBUdWUsIE1hciAyNCwgMjAyMCBhdCAw
NjoxMToxN1BNICswOTAwLCBKYWV3b24gS2ltIHdyb3RlOgo+ID4gPj4+PiBPbiAyMDIw64WEIDAz
7JuUIDIz7J28IDE4OjUzLCBHcmVnIEtIIHdyb3RlOgo+ID4gPj4+Pj4+ICtpbnQgcmVnaXN0ZXJf
bWVtaW5mb19leHRyYShhdG9taWNfbG9uZ190ICp2YWwsIGludCBzaGlmdCwgY29uc3QgY2hhciAq
bmFtZSkKPiA+ID4+Pj4+PiArewo+ID4gPj4+Pj4+ICsJc3RydWN0IG1lbWluZm9fZXh0cmEgKm1l
bWluZm8sICptZW10ZW1wOwo+ID4gPj4+Pj4+ICsJaW50IGxlbjsKPiA+ID4+Pj4+PiArCWludCBl
cnJvciA9IDA7Cj4gPiA+Pj4+Pj4gKwo+ID4gPj4+Pj4+ICsJbWVtaW5mbyA9IGt6YWxsb2Moc2l6
ZW9mKCptZW1pbmZvKSwgR0ZQX0tFUk5FTCk7Cj4gPiA+Pj4+Pj4gKwlpZiAoIW1lbWluZm8pIHsK
PiA+ID4+Pj4+PiArCQllcnJvciA9IC1FTk9NRU07Cj4gPiA+Pj4+Pj4gKwkJZ290byBvdXQ7Cj4g
PiA+Pj4+Pj4gKwl9Cj4gPiA+Pj4+Pj4gKwo+ID4gPj4+Pj4+ICsJbWVtaW5mby0+dmFsID0gdmFs
Owo+ID4gPj4+Pj4+ICsJbWVtaW5mby0+c2hpZnRfZm9yX3BhZ2UgPSBzaGlmdDsKPiA+ID4+Pj4+
PiArCXN0cm5jcHkobWVtaW5mby0+bmFtZSwgbmFtZSwgTkFNRV9TSVpFKTsKPiA+ID4+Pj4+PiAr
CWxlbiA9IHN0cmxlbihtZW1pbmZvLT5uYW1lKTsKPiA+ID4+Pj4+PiArCW1lbWluZm8tPm5hbWVb
bGVuXSA9ICc6JzsKPiA+ID4+Pj4+PiArCXN0cm5jcHkobWVtaW5mby0+bmFtZV9wYWQsIG1lbWlu
Zm8tPm5hbWUsIE5BTUVfQlVGX1NJWkUpOwo+ID4gPj4+Pj4+ICsJd2hpbGUgKCsrbGVuIDwgTkFN
RV9CVUZfU0laRSAtIDEpCj4gPiA+Pj4+Pj4gKwkJbWVtaW5mby0+bmFtZV9wYWRbbGVuXSA9ICcg
JzsKPiA+ID4+Pj4+PiArCj4gPiA+Pj4+Pj4gKwlzcGluX2xvY2soJm1lbWluZm9fbG9jayk7Cj4g
PiA+Pj4+Pj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdShtZW10ZW1wLCAmbWVtaW5mb19oZWFk
LCBsaXN0KSB7Cj4gPiA+Pj4+Pj4gKwkJaWYgKG1lbXRlbXAtPnZhbCA9PSB2YWwpIHsKPiA+ID4+
Pj4+PiArCQkJZXJyb3IgPSAtRUlOVkFMOwo+ID4gPj4+Pj4+ICsJCQlicmVhazsKPiA+ID4+Pj4+
PiArCQl9Cj4gPiA+Pj4+Pj4gKwl9Cj4gPiA+Pj4+Pj4gKwlpZiAoIWVycm9yKQo+ID4gPj4+Pj4+
ICsJCWxpc3RfYWRkX3RhaWxfcmN1KCZtZW1pbmZvLT5saXN0LCAmbWVtaW5mb19oZWFkKTsKPiA+
ID4+Pj4+PiArCXNwaW5fdW5sb2NrKCZtZW1pbmZvX2xvY2spOwo+ID4gPj4+Pj4gSWYgeW91IGhh
dmUgYSBsb2NrLCB3aHkgYXJlIHlvdSBuZWVkaW5nIHJjdT8KPiA+ID4+Pj4gSSB0aGluayBfcmN1
IHNob3VsZCBiZSByZW1vdmVkIG91dCBvZiBsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdS4KPiA+ID4+
Pj4gQnV0IEknbSBjb25mdXNlZCBhYm91dCB3aGF0IHlvdSBtZWFudC4KPiA+ID4+Pj4gSSB1c2Vk
IHJjdV9yZWFkX2xvY2sgb24gX19tZW1pbmZvX2V4dHJhLAo+ID4gPj4+PiBhbmQgSSB0aGluayBz
cGluX2xvY2sgaXMgYWxzbyBuZWVkZWQgZm9yIGFkZGl0aW9uIGFuZCBkZWxldGlvbiB0byBoYW5k
bGUgbXVsdGlwbGUgbW9kaWZpZXJzLgo+ID4gPj4+IElmIHRoYXQncyB0aGUgY2FzZSwgdGhlbiB0
aGF0J3MgZmluZSwgaXQganVzdCBkaWRuJ3Qgc2VlbSBsaWtlIHRoYXQgd2FzCj4gPiA+Pj4gbmVl
ZGVkLiAgT3IgSSBtaWdodCBoYXZlIGJlZW4gcmVhZGluZyB5b3VyIHJjdSBsb2dpYyBpbmNvcnJl
Y3RseS4uLgo+ID4gPj4+Cj4gPiA+Pj4+Pj4gKwlpZiAoZXJyb3IpCj4gPiA+Pj4+Pj4gKwkJa2Zy
ZWUobWVtaW5mbyk7Cj4gPiA+Pj4+Pj4gK291dDoKPiA+ID4+Pj4+PiArCj4gPiA+Pj4+Pj4gKwly
ZXR1cm4gZXJyb3I7Cj4gPiA+Pj4+Pj4gK30KPiA+ID4+Pj4+PiArRVhQT1JUX1NZTUJPTChyZWdp
c3Rlcl9tZW1pbmZvX2V4dHJhKTsKPiA+ID4+Pj4+IEVYUE9SVF9TWU1CT0xfR1BMKCk/ICBJIGhh
dmUgdG8gYXNrIDopCj4gPiA+Pj4+IEkgY2FuIHVzZSBFWFBPUlRfU1lNQk9MX0dQTC4KPiA+ID4+
Pj4+IHRoYW5rcywKPiA+ID4+Pj4+Cj4gPiA+Pj4+PiBncmVnIGstaAo+ID4gPj4+Pj4KPiA+ID4+
Pj4+Cj4gPiA+Pj4+IEhlbGxvCj4gPiA+Pj4+IFRoYW5rIHlvdSBmb3IgeW91ciBjb21tZW50Lgo+
ID4gPj4+Pgo+ID4gPj4+PiBCeSB0aGUgd2F5IHRoZXJlIHdhcyBub3QgcmVzb2x2ZWQgZGlzY3Vz
c2lvbiBvbiB2MSBwYXRjaCBhcyBJIG1lbnRpb25lZCBvbiBjb3ZlciBwYWdlLgo+ID4gPj4+PiBJ
J2QgbGlrZSB0byBoZWFyIHlvdXIgb3BpbmlvbiBvbiB0aGlzIC9wcm9jL21lbWluZm9fZXh0cmEg
bm9kZS4KPiA+ID4+PiBJIHRoaW5rIGl0IGlzIHRoZSBwcm9wYWdhdGlvbiBvZiBhbiBvbGQgYW5k
IG9ic29sZXRlIGludGVyZmFjZSB0aGF0IHlvdQo+ID4gPj4+IHdpbGwgaGF2ZSB0byBzdXBwb3J0
IGZvciB0aGUgbmV4dCAyMCsgeWVhcnMgYW5kIHlldCBub3QgYWN0dWFsbHkgYmUKPiA+ID4+PiB1
c2VmdWwgOikKPiA+ID4+Pgo+ID4gPj4+PiBEbyB5b3UgdGhpbmsgdGhpcyBpcyBtZWFuaW5nZnVs
IG9yIGNhbm5vdCBjby1leGlzdCB3aXRoIG90aGVyIGZ1dHVyZQo+ID4gPj4+PiBzeXNmcyBiYXNl
ZCBBUEkuCj4gPiA+Pj4gV2hhdCBzeXNmcy1iYXNlZCBBUEk/Cj4gPiA+PiBQbGVhc2UgcmVmZXIg
dG8gbWFpbCB0aHJlYWQgb24gdjEgcGF0Y2ggc2V0IC0gaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXll
LmNvbS91cmw/az0xNmUzYWNjYy00YjJmNjU0OC0xNmUyMjc4My0wY2M0N2FhOGY1YmEtOTM1ZmU4
MjhhYzJmNjY1NiZ1PWh0dHBzOi8vbGttbC5vcmcvbGttbC9mYW5jeS8yMDIwLzMvMTAvMjEwMgo+
ID4gPj4gZXNwZWNpYWxseSBkaXNjdXNzaW9uIHdpdGggTGVvbiBSb21hbm92c2t5IG9uIGh0dHBz
Oi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9NzQyMDhlZDktMjllYzQ3NWQtNzQyMTA1OTYt
MGNjNDdhYThmNWJhLTBiZDRlZjQ4OTMxZmVjOTUmdT1odHRwczovL2xrbWwub3JnL2xrbWwvZmFu
Y3kvMjAyMC8zLzE2LzE0MAo+ID4gPiBJIHJlYWxseSBkbyBub3QgdW5kZXJzdGFuZCB3aGF0IHlv
dSBhcmUgcmVmZXJyaW5nIHRvIGhlcmUsIHNvcnJ5LiAgIEkgZG8KPiA+ID4gbm90IHNlZSBhbnkg
c3lzZnMtYmFzZWQgY29kZSBpbiB0aGF0IHRocmVhZC4KPiA+IFNvcnJ5LiBJIGFsc28gZGlkIG5v
dCBzZWUgYWN0dWFsIGNvZGUuCj4gPiBIZWxsbyBMZW9uIFJvbWFub3Zza3ksIGNvdWxkIHlvdSBl
bGFib3JhdGUgeW91ciBwbGFuIHJlZ2FyZGluZyBzeXNmcyBzdHVmZj8KPiAKPiBTb3JyeSBmb3Ig
YmVpbmcgbGF0ZSwgSSB3YXNuJ3QgaW4gIlRPOiIsIHNvIG1pc3NlZCB0aGUgd2hvbGUgZGlzY3Vz
c2lvbi4KPiAKPiBHcmVnLAo+IAo+IFdlIG5lZWQgdGhlIGV4cG9zZWQgaW5mb3JtYXRpb24gZm9y
IHRoZSBtZW1vcnkgb3B0aW1pemF0aW9ucyAoZGVidWcsIG5vdAo+IHByb2R1Y3Rpb24pIG9mIG91
ciBoaWdoIHNwZWVkIE5JQ3MuIE91ciBkZXZpY2VzIChtbHg1KSBhbGxvY2F0ZXMgYSBsb3Qgb2YK
PiBtZW1vcnksIHNvIG9wdGltaXphdGlvbiB0aGVyZSBjYW4gaGVscCB1cyB0byBzY2FsZSBpbiBT
UklPViBtb2RlIGVhc2llciBhbmQKPiBiZSBsZXNzIGNvbnN0cmFpbnQgYnkgdGhlIG1lbW9yeS4K
CkdyZWF0LCB0aGVuIHVzZSBkZWJ1Z2ZzIGFuZCBleHBvc2Ugd2hhdCBldmVyIHlvdSB3YW50IGlu
IHdoYXQgZXZlciB3YXkKeW91IHdhbnQsIG5vIHJlc3RyaWN0aW9ucyB0aGVyZSwgeW91IGRvIG5v
dCBuZWVkIGFueSB0eXBlIG9mIGtlcm5lbC13aWRlCi9wcm9jIGZpbGUgZm9yIHRoYXQgdG9kYXku
Cgo+IEkgd2FudCB0byBlbXBoYXNpemUgdGhhdCBJIGRvbid0IGxpa2UgaWRlYSBvZiBleHRlbmRp
bmcgL3Byb2MvKiBpbnRlcmZhY2UKPiBiZWNhdXNlIGl0IGlzIGdvaW5nIHRvIGJlIHBhaW5mdWwg
dG8gZ3JlcCBvbiBsYXJnZSBtYWNoaW5lcyB3aXRoIG1hbnkKPiBkZXZpY2VzLiBBbmQgSSBkb24n
dCBsaWtlIHRoZSBpZGVhIHRoYXQgZXZlcnkgZHJpdmVyIHdpbGwgbmVlZCB0byByZWdpc3Rlcgo+
IGludG8gdGhpcyBpbnRlcmZhY2UsIGJlY2F1c2UgaXQgd2lsbCBiZSBhYnVzZWQgYWxtb3N0IGlt
bWVkaWF0ZWx5LgoKSSBhZ3JlZS4KCj4gTXkgcHJvcG9zYWwgd2FzIHRvIGNyZWF0ZSBuZXcgc3lz
ZnMgZmlsZSBieSBkcml2ZXIvY29yZSBhbmQgcHV0IGFsbAo+IGluZm9ybWF0aW9uIGF1dG9tYXRp
Y2FsbHkgdGhlcmUsIGZvciBleGFtcGxlLCBpdCBjYW4gYmUKPiAvc3lzL2RldmljZXMvcGNpMDAw
MDowMC8wMDAwOjAwOjBjLjAvbWVtaW5mbwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBeXl5eXl5eCgpOb3BlLCBhZ2FpbiwgdXNlIGRlYnVnZnMsIGFzIHN5c2ZzIGlzIG9u
bHkgb25lLXZhbHVlLXBlci1maWxlLgoKdGhhbmtzLAoKZ3JlZyBrLWgKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhl
Y0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8va2V4ZWMK
