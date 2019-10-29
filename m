Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7700E8FB7
	for <lists+kexec@lfdr.de>; Tue, 29 Oct 2019 20:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIYGnYoudY8OuvF4Tb3hwKtlJzxxXKjbSj+1pUWid8s=; b=P2L+MjXyRIgTfi
	ISrqgLgTpREHRoPPQZIqZT2M53rRYCYnczwaK8lsy8Oca3Wf8CX2+UMmsU2X0Osdc/fTk3/XCW0Kt
	nfOCGA+E6D27BY8CmDFmUPMKFSPWw+5GReVP3/iPfIU/8ScP6Szi7fICoy0DF6JvwlRQqXc1bM/a0
	Cgd/e+jc3bzpu7vfl8PdOf5SvAPgR21P+6moL6FrL38esXHKBFS8yahVm+kiSEKUnWfcS6UTYGccf
	/mZRDErkQjGbt/KZ5UMVkk+BNZo43Rl+30f9By1HvTwSPxHryLEV+ym+6nde9NjbPj3V4dTEWo0ne
	AHkNn/vcsDyFNrZ+HIcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPWss-0007Ot-2R; Tue, 29 Oct 2019 19:10:26 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPWsn-0007Nn-VG
 for kexec@lists.infradead.org; Tue, 29 Oct 2019 19:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572376217;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mQDT6O5eIXwTBzUXm44718YBn0rF97B8wn9b2KXtoyQ=;
 b=TqvrHXAxI4cCnJwlusAoB2UZvjH/WudJ1mvPVkKOTIY1W5Cjxda/j8cpk6KAjF6FEYN8QU
 1j8vIPSEPrf4OdbPxRr5uCFdc1T42HoVv6jJTAFRFzwWHjF3VuTjKFWVvt00mpmvxnxUZX
 yw4LKukSYxuirRP50ZHcFCarS2uA+1M=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-jgtNtTsePEeuVeXM9PzFCg-1; Tue, 29 Oct 2019 15:10:16 -0400
Received: by mail-lf1-f70.google.com with SMTP id h3so1528863lfp.17
 for <kexec@lists.infradead.org>; Tue, 29 Oct 2019 12:10:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mQDT6O5eIXwTBzUXm44718YBn0rF97B8wn9b2KXtoyQ=;
 b=BeQutfKjt7U+MWZtAqk4n315zTWilVHM3HFE3ZfR2kQumGyo+4WquUDklTCCC1kkMK
 MWkjHtI6v6ajAvAT4zF/DV4KNZuctyIaf6cUlf2rRoYHlwfao2LOGpRgVeapWApIhFzs
 UeV162JHCOq2TvN9Rne+UDw4GeE/voL3dT54ZOy3uRdHuRhRiVcJZ0mEK8nQiMhbwQAx
 Z8Oj6cSw8sdj9fgUnFsRCu7zICQAxFeNMujBhhZNvqyndW5CAyS2fHcpZItmFeHlH76r
 jNevy3XeaE7abpGG2T2S/7D7SdAmV+4AFuGSZCQrzfeQv5kGd7eaxbn3PCihNypoieMS
 oJvw==
X-Gm-Message-State: APjAAAUG6uqdLEE7C/NSbLmtV2k+8WoKhiXt9j0O+8Qj13nsyMGm5uAF
 GRB+g3OgHZ/IydM7tdHR7ioL7lQUhXSupdl/A3aFsDEAy2wSKhW1ecZooh6f/6YzuZbMZM2iUQK
 Wm1EbGXj9HeKt5CJ4BLscg3EvfGB3G2hzFOjP
X-Received: by 2002:a2e:96c1:: with SMTP id d1mr3938439ljj.87.1572376214676;
 Tue, 29 Oct 2019 12:10:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwB76fA+daP0tJGo+xE4CX1xb4ESjLPgCS/d6HMqrjOLzFg/tyOAHmoMjO/m1guZyyEwluNJCuizsGBxuvhqrg=
X-Received: by 2002:a2e:96c1:: with SMTP id d1mr3938434ljj.87.1572376214427;
 Tue, 29 Oct 2019 12:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
 <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
 <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03593E47@BPXM09GP.gisp.nec.co.jp>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 30 Oct 2019 00:40:02 +0530
Message-ID: <CACi5LpOexc5ss6DRHOSWJeSAwwGPQ55z1XiFqenGzY1rLkzeqA@mail.gmail.com>
Subject: Re: Makedumpfile help for 5.4.0.rc3 : Arm
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
X-MC-Unique: jgtNtTsePEeuVeXM9PzFCg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_121022_128505_64289513 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgS2F6dSwKClNvcnJ5IGZvciB0b3AgcG9zdGluZywgYnV0IEkgYW0gb24gbGVhdmUgZm9yIERp
d2FsaSBIb2xpZGF5cyBhbmQgd2lsbApyZXR1cm4gdG8gdGhlIG9mZmljZSBpbiBhIGNvdXBsZSBv
ZiBkYXlzLgoKSSBoYXZlIHRoZSBzb2x1dGlvbi9wYXRjaHNldCByZWFkeSBhbmQgSSBqdXN0IG5l
ZWQgdG8gZmluaXNoIHRoZQpjb21taXQgbWVzc2FnZXMgdG8gbWFrZSBzdXJlIHRoZXkgYXJlIHNl
bGYtZXhwbGFuYXRvcnkgZm9yIHVwc3RyZWFtCmFjY2VwdGFuY2UuCgpJIHdpbGwgdHJ5IHRvIHBv
c3QgdGhlbSBhbmQgYWxzbyBhbnN3ZXIgeW91ciBlbWFpbCBpbiBkZXRhaWwgd2hlbiBJCnJldHVy
biBiYWNrIGZyb20gaG9saWRheXMuCgpUaGFua3MgZm9yIHlvdXIgcGF0aWVuY2UuCgpSZWdhcmRz
LApCaHVwZXNoCgooU2VudCBmcm9tIG15IEFuZHJvaWQgUGhvbmUpCgpPbiBUdWUsIE9jdCAyOSwg
MjAxOSBhdCAyOjIzIEFNIEthenVoaXRvIEhhZ2lvIDxrLWhhZ2lvQGFiLmpwLm5lYy5jb20+IHdy
b3RlOgo+Cj4gSGkgQmh1cGVzaCwKPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+
ID4gPiBJIGFtIHdvcmtpbmcgb24gdGhlIGNoYW5nZXMgaW4gdGhlIHZtY29yZWluZm8gYWZ0ZXIg
dGhlIDUyLWJpdCBWQQo+ID4gPiA+IGNoYW5nZXMgZnJvbSBTdGV2ZSB3ZXJlIGFjY2VwdGVkIGlu
IExpbnV4IDUuNC1yYzEgKCJTdXBwb3J0IGZvciA1Mi1iaXQKPiA+ID4gPiB2aXJ0dWFsIGFkZHJl
c3NpbmcgaW4ga2VybmVsIHNwYWNl4oCdKS4KPiA+ID4KPiA+ID4KPiA+ID4gICAgSSBkb27igJl0
IHNlZSBhIGNvbW1pdCB3aXRoIHRoaXMgdGl0bGUgaW4gbGludXgtc3RhYmxlICA7ICBDb3VsZCB5
b3UgYmUgYSBsaXR0bGUgbW9yZSBzcGVjaWZpYyB3aGF0Cj4gPiBmaWxlICB0aGF0IHdhcyBhcHBs
aWVkIHRvID8KPiA+Cj4gPiBZb3UgY2FuIGhhdmUgYSBsb29rIGF0IHRoZSBmb2xsb3dpbmcgY29t
bWl0IChhbmQgZGVwZW5kZW5jaWVzKSBpbgo+ID4gTGludXMncyB0cmVlIChnaXQ6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0KQo+ID4g
d2hpY2ggaW50cm9kdWNlZCA1Mi1iaXQga2VybmVsIFZBcyBmb3IgYXJtNjQgYXJjaGl0ZWN0dXJl
Ogo+ID4KPiA+IGNvbW1pdCBiNmQwMGQ0N2U4MWE0OWY2Y2Y0NjI1MThjMTA0MDhmMzdhM2U2Nzg1
Cj4gPiBBdXRob3I6IFN0ZXZlIENhcHBlciA8c3RldmUuY2FwcGVyQGFybS5jb20+Cj4gPiBEYXRl
OiAgIFdlZCBBdWcgNyAxNjo1NToyMiAyMDE5ICswMTAwCj4gPgo+ID4gICAgIGFybTY0OiBtbTog
SW50cm9kdWNlIDUyLWJpdCBLZXJuZWwgVkFzCj4KPiBUaGFuayB5b3UgZm9yIHdvcmtpbmcgb24g
dGhpcy4KPgo+IEkndmUgYWxzbyBoYWQgYSBsb29rIGF0IHRoZW0sIGFuZCBteSB1bmRlcnN0YW5k
aW5nIGlzIHRoYXQgd2UgbmVlZAo+IGluIHZtY29yZWluZm8gYXQgbGVhc3Q6Cj4KPiAtIFRDUl9F
TDEuVDFTWiAoYWxtb3N0IGVxdWFscyB0byB2YWJpdHNfYWN0dWFsKSB0byBkZXRlcm1pbmU6Cj4g
ICBvIFBBR0VfT0ZGU0VUCj4gICBvIHdoZXRoZXIgdGhlIGtlcm5lbCBoYXMgdGhlICJmbGlwcGVk
IiBsaW5lYXIgbWFwIGFuZCB0aGUgb3RoZXJzLgo+ICAgICBXZSBuZWVkIGEgZml4IHRvIF9fcGEo
KSB3aXRoIGl0LiAoc2VlIHRoZSBwYXRjaCBiZWxvdykKPgo+IC0gUEFfQklUUyBvciBNQVhfUEhZ
U01FTV9CSVRTIHRvIGRldGVybWluZToKPiAgIG8gd2hldGhlciBTUEFSU0VNRU1fRVhUUkVNRSBv
ciBub3QsIGluIGlzX3NwYXJzZW1lbV9leHRyZW1lKCkKPiAgIG8gd2hldGhlciB0aGUga2VybmVs
IGhhcyA0OC1iaXQgb3IgNTItYml0IFBBIHRvIHN3aXRjaAo+ICAgICB0aGUgY2FsY3VsYXRpb24g
b2YgcHRlLXRvLXBhZGRyLiAodGhpcyBtaWdodCBiZSB1bm5lY2Vzc2FyeT8pCj4KPiBJcyB0aGlz
IHJpZ2h0Pwo+Cj4gQW5kIHdyb3RlIGEgdmVyeSBkcmFmdCBwYXRjaCwgd2hpY2ggd29ya3Mgb24g
YSA1LjQtcmM0IGtlcm5lbCB0aGF0Cj4gSSBtb2RpZmllZCB0byBoYXZlIE5VTUJFUih2YWJpdHNf
YWN0dWFsKSBhbmQgTlVNQkVSKE1BWF9QSFlTTUVNX0JJVFMpLAo+IHdpdGggVkFfQklUUz00OCBj
b25maWcgb3IgVkFfQklUUz01MiBjb25maWcgcnVubmluZyBpbiA0OC1iaXQgbW9kZS4KPiBodHRw
czovL2dpdGh1Yi5jb20vay1oYWdpby9tYWtlZHVtcGZpbGUvY29tbWl0L2ZkOWQ4NmVhMDViMzhl
OWVkYmI4YzBhYzNlYmQ2MTJkNWQ0ODVkZjMKPgo+IChJIGRvbid0IGludGVuZCB0byBleHBvcnQg
dGhlbSBhcyB0aGV5IGFyZSwgaXQncyBqdXN0IGZvciBhbiBleHBlcmltZW50Lgo+IEFuZCBubyBz
dXBwb3J0IGZvciAtLW1lbS11c2FnZSBvcHRpb24sICJyZWFsIiA1Mi1iaXQgUEEsIGFuZCBzbyBv
bi4pCj4KPiBBcyBmb3IgTUFYX1BIWVNNRU1fQklUUywgSSBkb24ndCBzdGljayB0byBleHBvcnQg
aXQgZm9yIGFsbCBhcmNoaXRlY3R1cmVzLAo+IGFsdGhvdWdoIEkgdG9sZCB5b3UgdGhhdCBpdCB3
b3VsZCBiZSBiZXR0ZXIgdG8gZG8gc28gaW4gdGhlIHBhc3QuCj4gSWYgaXQncyBoYXJkIHRvIGRv
IHNvLCBpdCdzIGZpbmUgd2l0aCBtZSB0byBleHBvcnQgaXQgb3Igc29tZXRoaW5nIHNpbWlsYXIK
PiBvbmx5IGZvciBhcm02NCBmb3Igbm93Li4KPgo+IFlvdXIgdGhvdWdodHM/Cj4KPiBUaGFua3Ms
Cj4gS2F6dQo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
