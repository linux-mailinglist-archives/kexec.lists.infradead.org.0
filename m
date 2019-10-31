Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F51EA8C6
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 02:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+kiurBZgP6SbnJRpCQl8F1mT4n5szl1LOdbC4kOedk=; b=kFW2EwP6QWM98q
	XGnkMlQcXMN57ncKF3P04xSm6zSOQufBtJ4/lHSzkKOyOKBtPNWXLDEsyCm45Zbtlhs99dpc9ZGEz
	moBiEPASCRbUR2FNUf4hQOzBF5sMQc1E+MBKxzSezPLaFDCtS9Wyng6KlVZgA+PvwdvuXrL391TQR
	5SYeAjlA6y2g+dVLPl/QdVbdJldwqX6Dl+KpxlpVWR7AWmxkx+9hIg7g1yQ7HIXGZiH9SOBA3BLrh
	KYodtNmTLTBcQ4fxLPvUv+E8fE7E4ld45xv+qbz7tAV7WkdJfNSEpWxH0l1mSmjf4Im/8iS6gNHtG
	TndmdOvcTv9ROv73OLhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPzFG-00019m-Cq; Thu, 31 Oct 2019 01:27:26 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzFC-00015t-9A
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 01:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572485239;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DrEKWKcGTyztKzabI5ITf2bBcmFzk5xS87SUwCJb26g=;
 b=SFcuAKLVpVdCzLVasr1OaozHc/BnDTMy+UTBBaYr6EY7W3WROx3KKjSRx2+Tj/mH4vJyZs
 JjVJ5epnr0pctkgNqPsJXs6eYje4bgv5M7nYYxrywl17Y9NY3C/xWkYbPvyNVgOA3SiWpS
 kvmcRMA6e+dPXMkuti2kRuBGoqkIsp0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-QWfdGM8fOS-0jt5Bu5JrkQ-1; Wed, 30 Oct 2019 21:27:15 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B17E92B4;
 Thu, 31 Oct 2019 01:27:13 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C2EE60BE0;
 Thu, 31 Oct 2019 01:27:00 +0000 (UTC)
Subject: Re: [PATCH 0/2 v8] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
From: lijiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
References: <20191030035501.23713-1-lijiang@redhat.com>
Message-ID: <8396c1d7-8ffc-65d1-fbff-558efcf44538@redhat.com>
Date: Thu, 31 Oct 2019 09:26:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191030035501.23713-1-lijiang@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: QWfdGM8fOS-0jt5Bu5JrkQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_182722_406538_9215474E 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com, d.hatayama@fujitsu.com,
 vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGksIAoKUGxlYXNlIGlnbm9yZSB0aGlzIHBhdGNoIHNlcmllcyBiZWNhdXNlIHRoZSBjb21waWxl
IHdhcm5pbmdzIGFyZSByZXBvcnRlZCBieSBrZHVpbGQuCgpJIHdpbGwgcmVzZW5kIHY4IGxhdGVy
IGFmdGVyIHRoZSB3YXJuaW5ncyBhcmUgZml4ZWQuCgpTb3JyeSBmb3IgdGhpcy4KClRoYW5rcy4K
TGlhbmJvCgrlnKggMjAxOeW5tDEw5pyIMzDml6UgMTE6NTQsIExpYW5ibyBKaWFuZyDlhpnpgZM6
Cj4gSW4gcHVyZ2F0b3J5KCksIHRoZSBtYWluIHRoaW5ncyBhcmUgYXMgYmVsb3c6Cj4gCj4gWzFd
IHZlcmlmeSBzaGEyNTYgaGFzaGVzIGZvciB2YXJpb3VzIHNlZ21lbnRzLgo+ICAgICBMZXRzIGtl
ZXAgdGhlc2UgY29kZXMsIGFuZCBkbyBub3QgdG91Y2ggdGhlIGxvZ2ljLgo+IAo+IFsyXSBjb3B5
IHRoZSBmaXJzdCA2NDBrIGNvbnRlbnQgdG8gYSBiYWNrdXAgcmVnaW9uLgo+ICAgICBMZXRzIHNh
ZmVseSByZW1vdmUgaXQgYW5kIGNsZWFuIGFsbCBjb2RlIHJlbGF0ZWQgdG8gYmFja3VwIHJlZ2lv
bi4KPiAKPiBUaGlzIHBhdGNoIHNlcmllcyB3aWxsIHJlbW92ZSB0aGUgYmFja3VwIHJlZ2lvbiwg
YmVjYXVzZSB0aGUgY3VycmVudAo+IGhhbmRsaW5nIG9mIGNvcHlpbmcgdGhlIGZpcnN0IDY0MGsg
cnVucyBpbnRvIHByb2JsZW1zIHdoZW4gU01FIGlzCj4gYWN0aXZlKGh0dHBzOi8vYnVnemlsbGEu
a2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjA0NzkzKS4KPiAKPiBUaGUgbG93IDFNIHJlZ2lv
biB3aWxsIGFsd2F5cyBiZSByZXNlcnZlZCB3aGVuIHRoZSBjcmFzaGtlcm5lbCBrZXJuZWwKPiBj
b21tYW5kIGxpbmUgb3B0aW9uIGlzIHNwZWNpZmllZC4gQW5kIHRoaXMgd2F5IG1ha2VzIGl0IHVu
bmVjZXNzYXJ5IHRvCj4gZG8gYW55dGhpbmcgd2l0aCB0aGUgbG93IDFNIHJlZ2lvbiwgYmVjYXVz
ZSB0aGUgbWVtb3J5IGFsbG9jYXRlZCBsYXRlcgo+IHdvbid0IGZhbGwgaW50byB0aGUgbG93IDFN
IGFyZWEuCj4gCj4gVGhpcyBzZXJpZXMgaW5jbHVkZXMgdHdvIHBhdGNoZXM6Cj4gWzFdIHg4Ni9r
ZHVtcDogYWx3YXlzIHJlc2VydmUgdGhlIGxvdyAxTSB3aGVuIHRoZSBjcmFzaGtlcm5lbCBvcHRp
b24KPiAgICAgaXMgc3BlY2lmaWVkCj4gICAgIFRoZSBsb3cgMU0gcmVnaW9uIHdpbGwgYWx3YXlz
IGJlIHJlc2VydmVkIHdoZW4gdGhlIGNyYXNoa2VybmVsCj4gICAgIGtlcm5lbCBjb21tYW5kIGxp
bmUgb3B0aW9uIGlzIHNwZWNpZmllZCwgd2hpY2ggZW5zdXJlcyB0aGF0IHRoZQo+ICAgICBtZW1v
cnkgYWxsb2NhdGVkIGxhdGVyIHdvbid0IGZhbGwgaW50byB0aGUgbG93IDFNIGFyZWEuCj4gCj4g
WzJdIHg4Ni9rZHVtcDogY2xlYW4gdXAgYWxsIHRoZSBjb2RlIHJlbGF0ZWQgdG8gdGhlIGJhY2t1
cCByZWdpb24KPiAgICAgUmVtb3ZlIHRoZSBiYWNrdXAgcmVnaW9uIGFuZCBjbGVhbiB1cC4KPiAK
PiBDaGFuZ2VzIHNpbmNlIHYxOgo+IFsxXSBBZGQgZXh0cmEgY2hlY2tpbmcgY29uZGl0aW9uOiB3
aGVuIHRoZSBjcmFzaGtlcm5lbCBvcHRpb24gaXMKPiAgICAgc3BlY2lmaWVkLCByZXNlcnZlIHRo
ZSBsb3cgNjQwayBhcmVhLgo+IAo+IENoYW5nZXMgc2luY2UgdjI6Cj4gWzFdIFJlc2VydmUgdGhl
IGxvdyAxTSByZWdpb24gd2hlbiB0aGUgY3Jhc2hrZXJuZWwgb3B0aW9uIGlzIG9ubHkKPiAgICAg
c3BlY2lmaWVkLihTdWdnZXN0ZWQgYnkgRXJpYykKPiAKPiBbMl0gUmVtb3ZlIHRoZSB1bnVzZWQg
Y3Jhc2hfY29weV9iYWNrdXBfcmVnaW9uKCkKPiAKPiBbM10gUmVtb3ZlIHRoZSBiYWNrdXAgcmVn
aW9uIGFuZCBjbGVhbiB1cAo+IAo+IFs0XSBTcGxpdCB0aGVtIGludG8gdGhyZWUgcGF0Y2hlcwo+
IAo+IENoYW5nZXMgc2luY2UgdjM6Cj4gWzFdIEltcHJvdmUgdGhlIGZpcnN0IHBhdGNoJ3MgbG9n
Cj4gCj4gWzJdIEltcHJvdmUgdGhlIHRoaXJkIHBhdGNoIGJhc2VkIG9uIEVyaWMncyBzdWdnZXN0
aW9ucwo+IAo+IENoYW5nZXMgc2luY2UgdjQ6Cj4gWzFdIENvcnJlY3Qgc29tZSB0eXBvcywgYW5k
IGFsc28gaW1wcm92ZSB0aGUgZmlyc3QgcGF0Y2gncyBsb2cKPiAKPiBbMl0gQWRkIGEgbmV3IGZ1
bmN0aW9uIGtleGVjX3Jlc2VydmVfbG93XzFNaUIoKSBpbiBrZXJuZWwva2V4ZWNfY29yZS5jCj4g
ICAgIGFuZCB3aGljaCBpcyBjYWxsZWQgYnkgcmVzZXJ2ZV9yZWFsX21vZGUoKS4gKFN1Z2dlc3Rl
ZCBieSBCb3JpcykKPiAKPiBDaGFuZ2VzIHNpbmNlIHY1Ogo+IFsxXSBDYWxsIHRoZSBjbWRsaW5l
X2ZpbmRfb3B0aW9uKCkgaW5zdGVhZCBvZiBzdHJzdHIoKSB0byBjaGVjayB0aGUKPiAgICAgY3Jh
c2hrZXJuZWwgb3B0aW9uLiAoU3VnZ2VzdGVkIGJ5IEhhdGF5YW1hKQo+IAo+IFsyXSBBZGQgYSB3
ZWFrIGZ1bmN0aW9uIGtleGVjX3Jlc2VydmVfbG93XzFNaUIoKSBpbiBrZXJuZWwva2V4ZWNfY29y
ZS5jLAo+ICAgICBhbmQgaW1wbGVtZW50IHRoZSBrZXhlY19yZXNlcnZlX2xvd18xTWlCKCkgaW4g
YXJjaC94ODYva2VybmVsLwo+ICAgICBtYWNoaW5lX2tleGVjXzY0LmMgc28gdGhhdCBpdCBkb2Vz
IG5vdCBjYXVzZSB0aGUgY29tcGlsZSBlcnJvcgo+ICAgICBvbiBub24teDg2IGtlcm5lbCwgYW5k
IGFsc28gZW5zdXJlcyB0aGF0IGl0IGNhbiB3b3JrIHdlbGwgb24geDg2Cj4gICAgIGtlcm5lbC4K
PiAKPiBDaGFuZ2VzIHNpbmNlIHY2Ogo+IFsxXSBNb3ZlIHRoZSBrZXhlY19yZXNlcnZlX2xvd18x
TWlCKCkgdG8gYXJjaC94ODYva2VybmVsL2NyYXNoLmMgYW5kCj4gICAgIGFsc28gbW92ZSBpdHMg
ZGVjbGFyYXRpb24gZnVuY3Rpb24gdG8gYXJjaC94ODYvaW5jbHVkZS9hc20vY3Jhc2guaAo+ICAg
ICAoU3VnZ2VzdGVkIGJ5IERhdmUgWW91bmcpCj4gCj4gWzJdIEFkanVzdCB0aGUgY29ycmVzcG9u
ZGluZyBoZWFkZXIgZmlsZXMuCj4gCj4gQ2hhbmdlcyBzaW5jZSB2NzoKPiBbMV0gQ2hhbmdlIHRo
ZSBmdW5jdGlvbiBuYW1lIGZyb20ga2V4ZWNfcmVzZXJ2ZV9sb3dfMU1pQigpIHRvCj4gICAgIGNy
YXNoX3Jlc2VydmVfbG93XzFNKCkuCj4gCj4gTGlhbmJvIEppYW5nICgyKToKPiAgIHg4Ni9rZHVt
cDogYWx3YXlzIHJlc2VydmUgdGhlIGxvdyAxTSB3aGVuIHRoZSBjcmFzaGtlcm5lbCBvcHRpb24g
aXMKPiAgICAgc3BlY2lmaWVkCj4gICB4ODYva2R1bXA6IGNsZWFuIHVwIGFsbCB0aGUgY29kZSBy
ZWxhdGVkIHRvIHRoZSBiYWNrdXAgcmVnaW9uCj4gCj4gIGFyY2gveDg2L2luY2x1ZGUvYXNtL2Ny
YXNoLmggICAgICAgfCAgIDYgKysKPiAgYXJjaC94ODYvaW5jbHVkZS9hc20va2V4ZWMuaCAgICAg
ICB8ICAxMCAtLS0KPiAgYXJjaC94ODYvaW5jbHVkZS9hc20vcHVyZ2F0b3J5LmggICB8ICAxMCAt
LS0KPiAgYXJjaC94ODYva2VybmVsL2NyYXNoLmMgICAgICAgICAgICB8IDEwMiArKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ICBhcmNoL3g4Ni9rZXJuZWwvbWFjaGluZV9rZXhlY182NC5j
IHwgIDQ3IC0tLS0tLS0tLS0tLS0KPiAgYXJjaC94ODYvcHVyZ2F0b3J5L3B1cmdhdG9yeS5jICAg
ICB8ICAxOSAtLS0tLS0KPiAgYXJjaC94ODYvcmVhbG1vZGUvaW5pdC5jICAgICAgICAgICB8ICAg
MiArCj4gIDcgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgMTYyIGRlbGV0aW9ucygt
KQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtl
eGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
