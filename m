Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0FCEA8CC
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 02:31:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbwH6y/bUaIQYOg93GC1ePErVAuN1YSRjFS5yHQiz94=; b=W8QyuyTZ2sOhWE
	+dcuSnMoH2NeRp7F/N74wq8dW60HAF9+fLa1hg0dRnSQK1TI9VKTfQY06iHplbPFv0D6S5OABCRn1
	jYa4edb62nz1FgrfQ0lfWikfq7fIMgJUZvAKjGfW+ma9O+HGVJiTajrINsNO7Y0Q6JPR19aTd/mzk
	TMer7rI3P1/f3XCT52QKlaie1jxNTGfUsFbr7RzwP1JAUEpHcas5VeWuyPpmFq/Z03EJff/ZW6xSf
	F/pC40o/sYLEaMQ7SMH6UsprjWhx6Trb152NGipr3u37NfSm0/ivTciKlYjKChFmIhIiFahXwWZTJ
	SCxOdfx9MkMICUqjeiyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPzJO-0002dX-OH; Thu, 31 Oct 2019 01:31:42 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPzJL-0002dD-1n
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 01:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572485497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8x/YR60hZnP79WwS5nz3vSbESJNKawCBZZ0QLX/Ly5E=;
 b=amHg7KQjzFqxn4FdoqfQ5V8OvxmKgr+IlfS6Dr2RJtq4DKgyA0NGM+DCkQW2zSiOy4NprT
 yGwYkB/XswCP68ECMGltFF6hhsBsZkBYGnLtbeeBGagu4g+jGfa39LTzYHohAFqMlEEfw8
 1MWZ5QUPLAtg3BPjaltYm6BHtHacswU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-GF91RIWAPQe2uSW2E9hAGQ-1; Wed, 30 Oct 2019 21:31:35 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2926B800EB3;
 Thu, 31 Oct 2019 01:31:33 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-31.pek2.redhat.com [10.72.12.31])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EA9AB60870;
 Thu, 31 Oct 2019 01:31:16 +0000 (UTC)
Subject: Re: [PATCH 1/2 v7] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
To: kbuild test robot <lkp@intel.com>
References: <20191029021059.22070-2-lijiang@redhat.com>
 <201910310233.EJRtTMWP%lkp@intel.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <1833dc17-6797-b18d-5265-15d01056ac1c@redhat.com>
Date: Thu, 31 Oct 2019 09:31:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <201910310233.EJRtTMWP%lkp@intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: GF91RIWAPQe2uSW2E9hAGQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_183139_166425_3BBD4437 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, kbuild-all@lists.01.org,
 bhe@redhat.com, horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 bp@alien8.de, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDMx5pelIDAyOjI1LCBrYnVpbGQgdGVzdCByb2JvdCDlhpnpgZM6Cj4g
SGkgTGlhbmJvLAo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoISBQZXJoYXBzIHNvbWV0aGlu
ZyB0byBpbXByb3ZlOgo+IAo+IFthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBsaW51cy9tYXN0
ZXJdCj4gW2Fsc28gYnVpbGQgdGVzdCBXQVJOSU5HIG9uIHY1LjQtcmM1IG5leHQtMjAxOTEwMzBd
Cj4gW2lmIHlvdXIgcGF0Y2ggaXMgYXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIHBsZWFz
ZSBkcm9wIHVzIGEgbm90ZSB0byBoZWxwCj4gaW1wcm92ZSB0aGUgc3lzdGVtLiBCVFcsIHdlIGFs
c28gc3VnZ2VzdCB0byB1c2UgJy0tYmFzZScgb3B0aW9uIHRvIHNwZWNpZnkgdGhlCj4gYmFzZSB0
cmVlIGluIGdpdCBmb3JtYXQtcGF0Y2gsIHBsZWFzZSBzZWUgaHR0cHM6Ly9zdGFja292ZXJmbG93
LmNvbS9hLzM3NDA2OTgyXQo+IAo+IHVybDogICAgaHR0cHM6Ly9naXRodWIuY29tLzBkYXktY2kv
bGludXgvY29tbWl0cy9MaWFuYm8tSmlhbmcveDg2LWtkdW1wLUZpeC1rbWVtLXMtcmVwb3J0ZWQt
YW4taW52YWxpZC1mcmVlcG9pbnRlci13aGVuLVNNRS13YXMtYWN0aXZlLzIwMTkxMDMxLTAwMTkw
Mwo+IGJhc2U6ICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0IDMyMDAwMGU3MmVjMDYxM2UxNjRjZTk2MDhkODY1Mzk2ZmIy
ZGEyNzgKPiBjb25maWc6IGkzODYtZGVmY29uZmlnIChhdHRhY2hlZCBhcyAuY29uZmlnKQo+IGNv
bXBpbGVyOiBnY2MtNyAoRGViaWFuIDcuNC4wLTE0KSA3LjQuMAo+IHJlcHJvZHVjZToKPiAgICAg
ICAgICMgc2F2ZSB0aGUgYXR0YWNoZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4gICAg
ICAgICBtYWtlIEFSQ0g9aTM4NiAKPiAKPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFk
ZCBmb2xsb3dpbmcgdGFnCj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50
ZWwuY29tPgo+IAo+IEFsbCB3YXJuaW5ncyAobmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOgo+IAo+
ICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBhcmNoL3g4Ni9yZWFsbW9kZS9pbml0LmM6MTE6MDoK
Pj4+IGFyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNoLmg6NTozMjogd2FybmluZzogJ3N0cnVjdCBr
aW1hZ2UnIGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxl
IG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uCj4gICAgIGludCBjcmFz
aF9sb2FkX3NlZ21lbnRzKHN0cnVjdCBraW1hZ2UgKmltYWdlKTsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF5+fn5+fgo+ICAgIGFyY2gveDg2L2luY2x1ZGUvYXNtL2NyYXNo
Lmg6NjozNzogd2FybmluZzogJ3N0cnVjdCBraW1hZ2UnIGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0
ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxlIG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9y
IGRlY2xhcmF0aW9uCj4gICAgIGludCBjcmFzaF9jb3B5X2JhY2t1cF9yZWdpb24oc3RydWN0IGtp
bWFnZSAqaW1hZ2UpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBe
fn5+fn4KPiAgICBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9jcmFzaC5oOjc6Mzk6IHdhcm5pbmc6ICdz
dHJ1Y3Qga2ltYWdlJyBkZWNsYXJlZCBpbnNpZGUgcGFyYW1ldGVyIGxpc3Qgd2lsbCBub3QgYmUg
dmlzaWJsZSBvdXRzaWRlIG9mIHRoaXMgZGVmaW5pdGlvbiBvciBkZWNsYXJhdGlvbgo+ICAgICBp
bnQgY3Jhc2hfc2V0dXBfbWVtbWFwX2VudHJpZXMoc3RydWN0IGtpbWFnZSAqaW1hZ2UsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+Cj4gCkhpLAoKVGhl
IGFib3ZlIHdhcm5pbmdzIHdpbGwgc3RpbGwgb2NjdXIgd2l0aG91dCBteSBwYXRjaGVzLgoKQnV0
IGkgd2lsbCBmaXggdGhlIHdhcm5pbmdzIGluIG15IHBhdGNoIHNlcmllcywgYW5kIHJlc2VuZCB2
OCBsYXRlci4KClRoYW5rcy4KCkxpYW5ibwoKPiB2aW0gKzUgYXJjaC94ODYvaW5jbHVkZS9hc20v
Y3Jhc2guaAo+IAo+IGRkNWY3MjYwNzZjYzc2IFZpdmVrIEdveWFsIDIwMTQtMDgtMDggICA0ICAK
PiBkZDVmNzI2MDc2Y2M3NiBWaXZlayBHb3lhbCAyMDE0LTA4LTA4ICBANSAgaW50IGNyYXNoX2xv
YWRfc2VnbWVudHMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpOwo+IGRkNWY3MjYwNzZjYzc2IFZpdmVr
IEdveWFsIDIwMTQtMDgtMDggICA2ICBpbnQgY3Jhc2hfY29weV9iYWNrdXBfcmVnaW9uKHN0cnVj
dCBraW1hZ2UgKmltYWdlKTsKPiBkZDVmNzI2MDc2Y2M3NiBWaXZlayBHb3lhbCAyMDE0LTA4LTA4
ICAgNyAgaW50IGNyYXNoX3NldHVwX21lbW1hcF9lbnRyaWVzKHN0cnVjdCBraW1hZ2UgKmltYWdl
LAo+IGRkNWY3MjYwNzZjYzc2IFZpdmVrIEdveWFsIDIwMTQtMDgtMDggICA4ICAJCXN0cnVjdCBi
b290X3BhcmFtcyAqcGFyYW1zKTsKPiA4OWY1NzljZTk5ZjdlMCBZaSBXYW5nICAgICAyMDE4LTEx
LTIyICAgOSAgdm9pZCBjcmFzaF9zbXBfc2VuZF9zdG9wKHZvaWQpOwo+IGRkNWY3MjYwNzZjYzc2
IFZpdmVrIEdveWFsIDIwMTQtMDgtMDggIDEwICAKPiAKPiA6Ojo6OjogVGhlIGNvZGUgYXQgbGlu
ZSA1IHdhcyBmaXJzdCBpbnRyb2R1Y2VkIGJ5IGNvbW1pdAo+IDo6Ojo6OiBkZDVmNzI2MDc2Y2M3
NjM5ZDk3MTNiMzM0YzhjMTMzZjc3YzY3NTdhIGtleGVjOiBzdXBwb3J0IGZvciBrZXhlYyBvbiBw
YW5pYyB1c2luZyBuZXcgc3lzdGVtIGNhbGwKPiAKCkV4YWN0bHkuCgo+IDo6Ojo6OiBUTzogVml2
ZWsgR295YWwgPHZnb3lhbEByZWRoYXQuY29tPgo+IDo6Ojo6OiBDQzogTGludXMgVG9ydmFsZHMg
PHRvcnZhbGRzQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+IAo+IC0tLQo+IDAtREFZIGtlcm5lbCB0
ZXN0IGluZnJhc3RydWN0dXJlICAgICAgICAgICAgICAgIE9wZW4gU291cmNlIFRlY2hub2xvZ3kg
Q2VudGVyCj4gaHR0cHM6Ly9saXN0cy4wMS5vcmcvcGlwZXJtYWlsL2tidWlsZC1hbGwgICAgICAg
ICAgICAgICAgICAgSW50ZWwgQ29ycG9yYXRpb24KPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2tleGVjCg==
