Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E177A12CEA9
	for <lists+kexec@lfdr.de>; Mon, 30 Dec 2019 11:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNMxnjEee2l7R7LAVc2/JNEv4Uan+YgErK5Jcu7F4dk=; b=O1MRTIMJmCK35A
	EoPSnl3NWpZoimd9UI9x/XxI2ySYFtQOTcMjsPfmlVKNQl8mUfB2xzGBmADN81x9BCvtgVf/pkF+l
	KrU0lExEccMWyycZ03/NAx4qVKS+3vrkBWhyVGzGo+PVFdFHbn43nNFgESfUnGwiNUq3Bj5FXZM0V
	3bBLe6wZV4MMZWgSFfJgRblFomMSBElJ/HtJCkx+N+M1VVnRXu7k4t7tXvOhlzzrHgxdTak1sUzD/
	DMFV83NPnQ/ejbSk8BNPUYZgc8m0YFMPTHX6hjBFkoxVlGjc6t1YX6c9kmLiAzf2Ps8PuwUMwjeN1
	HCrMXtmQjMw/ZmQ8imjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ils5P-0004Do-90; Mon, 30 Dec 2019 10:15:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ils5K-0004DJ-4z
 for kexec@lists.infradead.org; Mon, 30 Dec 2019 10:15:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577700935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=d18CeLJCJ9dqLy63ysHKPvaobzzTE2m+72O/K4sze3I=;
 b=davDLTvQyP6iABEU1oEWCsmtGNuu7JRyeu9Cvp2FL5tYU/I52kq8+ysMRRBb0jpbuobkLZ
 lVeD7kE2MRJHZJc8OOrdA8UEthcY6UfqGfUxnsu7mvTNQ9kRKUS4Nwe8TYiGdi789ypAOZ
 zhzEu65aR1Iw9H89c4oWnDtDc606w8o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-w52sWIPxPLaEb0ESsoodQw-1; Mon, 30 Dec 2019 05:15:29 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A839800D4C;
 Mon, 30 Dec 2019 10:15:28 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-107.pek2.redhat.com
 [10.72.12.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6400B19C4F;
 Mon, 30 Dec 2019 10:15:25 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
To: =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?=
 <k-hagio-ab@nec.com>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
 <323f61d4-6aab-a0b4-faa3-e41756fb9913@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
 <8fd807f1-c296-1a34-e42a-a102df62f3a0@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03598540@BPXM09GP.gisp.nec.co.jp>
 <726b8852-77af-b440-99b2-6b5a7b05e674@redhat.com>
 <2aa868b8-83f4-cb23-9acf-178a9ab8144a@redhat.com>
 <TY2PR01MB5210EBE26FC1603B3E7FF491DD2A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <ecaa7f62-d58f-080d-27de-176b3d592a11@redhat.com>
Date: Mon, 30 Dec 2019 18:15:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <TY2PR01MB5210EBE26FC1603B3E7FF491DD2A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: w52sWIPxPLaEb0ESsoodQw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_021538_312749_3B491EFB 
X-CRM114-Status: GOOD (  28.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mikhail Zaslonko <zaslonko@linux.ibm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

PiBIaSBMaWFuYm8sCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IOWcqCAyMDE5
5bm0MTLmnIgyNuaXpSAxMTozOCwgbGlqaWFuZyDlhpnpgZM6Cj4+PiBIaSwgS2F6dSBhbmQgTWlr
aGFpbCwKPj4+Cj4+Pj4gSGkgTWlraGFpbCwKPj4+Pgo+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQo+Pj4+PiBIaSwKPj4+Pj4KPj4+Pj4gT24gMTIuMTIuMjAxOSAxNzoxMiwgS2F6dWhp
dG8gSGFnaW8gd3JvdGU6Cj4+Pj4+PiBIaSBNaWtoYWlsLAo+Pj4+Pj4KPj4+Pj4+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4+Pj4+IEhlbGxvIEthenUsCj4+Pj4+Pj4KPj4+Pj4+PiBJ
IHRoaW5rIHdlIGNhbiB0cnkgdG8gZ2VuZXJhbGl6ZSB0aGUga2FzbHIgb2Zmc2V0IGV4dHJhY3Rp
b24uCj4+Pj4+Pj4gSSB3b24ndCBzcGVhayBmb3Igb3RoZXIgYXJjaGl0ZWN0dXJlcywgYnV0IGZv
ciBzMzkwIHRoYXQgZ2V0X2thc2xyX29mZnNldF9hcm02NCgpCj4+Pj4+Pj4gc2hvdWxkIHdvcmsg
ZmluZS4gVGhlIG9ubHkgY29uY2VybiBvZiBtaW5lIGlzIHRoaXMgVE9ETyBzdGF0ZW1lbnQ6Cj4+
Pj4+Pj4KPj4+Pj4+PiBpZiAoX3RleHQgPD0gdmFkZHIgJiYgdmFkZHIgPD0gX2VuZCkgewo+Pj4+
Pj4+IAlERUJVR19NU0coImluZm8tPmthc2xyX29mZnNldDogJWx4XG4iLCBpbmZvLT5rYXNscl9v
ZmZzZXQpOwo+Pj4+Pj4+IAlyZXR1cm4gaW5mby0+a2FzbHJfb2Zmc2V0Owo+Pj4+Pj4+IAl9IGVs
c2Ugewo+Pj4+Pj4+IAkvKgo+Pj4+Pj4+IAkqIFRPRE86IHdlIG5lZWQgdG8gY2hlY2sgaWYgaXQg
aXMgdm1hbGxvYy92bW1lbW1hcC9tb2R1bGUKPj4+Pj4+PiAJKiBhZGRyZXNzLCB3ZSB3aWxsIGhh
dmUgZGlmZmVyZW50IG9mZnNldAo+Pj4+Pj4+IAkqLwo+Pj4+Pj4+IAlyZXR1cm4gMDsKPj4+Pj4+
PiB9Cj4+Pj4+Pj4KPj4+Pj4+PiBDb3VsZCB5b3UgZXhwbGFpbiB0aGlzIG9uZT8KPj4+Pj4+Cj4+
Pj4+PiBQcm9iYWJseSBpdCB3YXMgY29uc2lkZXJlZCB0aGF0IHRoZSBjaGVjayB3b3VsZCBiZSBu
ZWVkZWQgdG8gc3VwcG9ydAo+Pj4+Pj4gdGhlIHdob2xlIEtBU0xSIGJlaGF2aW9yIHdoZW4gZ2V0
X2thc2xyX29mZnNldF94ODZfNjQoKSB3YXMgd3JpdHRlbgo+Pj4+Pj4gb3JpZ2luYWxseS4KPj4+
Pj4+Cj4+Pj4+PiBCdXQgaW4gdGhlIGN1cnJlbnQgbWFrZWR1bXBmaWxlIGZvciB4ODZfNjQgYW5k
IGFybTY0IHN1cHBvcnRpbmcgS0FTTFIsCj4+Pj4+PiB0aGUgb2Zmc2V0IHdlIG5lZWQgaXMgdGhl
IG9uZSBmb3Igc3ltYm9sIGFkZHJlc3NlcyBpbiB2bWxpbnV4IG9ubHkuCj4+Pj4+PiBBcyBJIHNh
aWQgYmVsb3csIG1vZHVsZSBzeW1ib2wgYWRkcmVzc2VzIGFyZSByZXRyaWV2ZWQgZnJvbSB2bWNv
cmUuCj4+Pj4+PiBPdGhlciBhZGRyZXNzZXMgc2hvdWxkIG5vdCBiZSBwYXNzZWQgdG8gdGhlIGZ1
bmN0aW9uIGZvciBub3csIGFzIGZhcgo+Pj4+Pj4gYXMgSSBrbm93Lgo+Pj4+Pj4KPj4+Pj4+IFNv
IEkgdGhpbmsgdGhlIFRPRE8gY29tbWVudCBpcyBjb25mdXNpbmcsIGFuZCBpdCB3b3VsZCBiZSBi
ZXR0ZXIgdG8KPj4+Pj4+IHJlbW92ZSBpdCBvciBjaGFuZ2UgaXQgdG8gc29tZXRoaW5nIGxpa2U6
Cj4+Pj4+PiAvKgo+Pj4+Pj4gICogUmV0dXJucyAwIGlmIHZhZGRyIGRvZXMgbm90IG5lZWQgdGhl
IG9mZnNldCB0byBiZSBhZGRlZCwKPj4+Pj4+ICAqIGUuZy4gZm9yIG1vZHVsZSBhZGRyZXNzLgo+
Pj4+Pj4gICovCj4+Pj4+Pgo+Pj4+Pj4gQnV0IGlmIHMzOTAgdXNlcyBnZXRfa2FzbHJfb2Zmc2V0
KCkgaW4gaXRzIGFyY2gtc3BlY2lmaWMgY29kZSB0bwo+Pj4+Pj4gYWRqdXN0IGFkZHJlc3NlcyBv
dGhlciB0aGFuIGtlcm5lbCB0ZXh0IGFkZHJlc3MsIHdlIG1pZ2h0IG5lZWQgdG8KPj4+Pj4+IG1v
ZGlmeSBpdCBmb3IgczM5MCwgbm90IGdlbmVyYWxpemUgaXQuCj4+Pj4+Cj4+Pj4+IEN1cnJlbnRs
eSwgczM5MCBkb2Vzbid0IHVzZSBnZXRfa2FzbHJfb2Zmc2V0KCkgaW4gaXRzIGFyY2gtc3BlY2lm
aWMKPj4+Pj4gY29kZS4KPj4+Pgo+Pj4+IE9LLCBJIHB1c2hlZCBhIHBhdGNoIHRoYXQgZ2VuZXJh
bGl6ZXMgaXQgdG8gbXkgdGVzdCByZXBvc2l0b3J5Lgo+Pj4+IENvdWxkIHlvdSBlbmFibGUgczM5
MCB0byB1c2UgaXQgYW5kIHRlc3Q/Cj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL2staGFnaW8vbWFr
ZWR1bXBmaWxlL3RyZWUvYWRkLWdldF9rYXNscl9vZmZzZXRfZ2VuZXJhbAo+Pj4+Cj4+Pgo+Pj4g
SSBlbmFibGVkIGl0IG9uIHMzOTAgYXMgYmVsb3cgYW5kIHRlc3RlZCwgaXQgd29ya2VkLgo+IAo+
IFRoYW5rIHlvdSBmb3IgdGVzdGluZy4KPiAKSXQncyBteSBwbGVhc3VyZS4gCgo+Pj4KPj4+IEBA
IC0xMDc1LDcgKzEwNzUsNyBAQCBpbnQgaXNfaW9tZW1fcGh5c19hZGRyX3MzOTB4KHVuc2lnbmVk
IGxvbmcgYWRkcik7Cj4+PiAgI2RlZmluZSBnZXRfcGh5c19iYXNlKCkgICAgICAgICAgICAgICAg
c3R1Yl90cnVlKCkKPj4+ICAjZGVmaW5lIGdldF9tYWNoZGVwX2luZm8oKSAgICAgZ2V0X21hY2hk
ZXBfaW5mb19zMzkweCgpCj4+PiAgI2RlZmluZSBnZXRfdmVyc2lvbmRlcF9pbmZvKCkgIHN0dWJf
dHJ1ZSgpCj4+PiAtI2RlZmluZSBnZXRfa2FzbHJfb2Zmc2V0KFgpICAgIHN0dWJfZmFsc2UoKQo+
Pj4gKyNkZWZpbmUgZ2V0X2thc2xyX29mZnNldChYKSAgICBnZXRfa2FzbHJfb2Zmc2V0X2dlbmVy
YWwoWCkKPj4+ICAjZGVmaW5lIHZhZGRyX3RvX3BhZGRyKFgpICAgICAgdmFkZHJfdG9fcGFkZHJf
czM5MHgoWCkKPj4+Cj4+PiBCdXQsIHRoZXJlIGlzIHN0aWxsIGEgcHJvYmxlbSB0aGF0IG5lZWRz
IHRvIGJlIGltcHJvdmVkLiBJbiB0aGUgZmluZF9rYXNscl9vZmZzZXRzKCksCj4+PiB0aGUgdmFs
dWUgb2YgU1lNQk9MKF9zdGV4dCkgaXMgYWx3YXlzIDAoemVybykgYW5kIGl0IGlzIHBhc3NlZCB0
byB0aGUgZ2V0X2thc2xyX29mZnNldCgpLgo+Pj4gRm9yIHRoZSBmb2xsb3dpbmcgY29kZSBpbiB0
aGUgZ2V0X2thc2xyX29mZnNldF9nZW5lcmFsKCksIGl0IGRvZXMgbm90IHdvcmsgYXMgZXhwZWN0
ZWQuCj4+PiAuLi4KPj4+IAlpZiAoX3RleHQgPD0gdmFkZHIgJiYgdmFkZHIgPD0gX2VuZCkKPj4+
IAkJcmV0dXJuIGluZm8tPmthc2xyX29mZnNldDsKPj4+IAllbHNlCj4+PiAJCXJldHVybiAwOwo+
IAo+IEkgZG9uJ3Qga25vdyB3aHkgdGhlIFNZTUJPTChfc3RleHQpIGlzIHBhc3NlZCB0byB0aGUg
Z2V0X2thc2xyX29mZnNldCgpIHRoZXJlLCBidXQKPiBzaW5jZSB0aGUgcmV0dXJuIHZhbHVlIG9m
IGdldF9rYXNscl9vZmZzZXQoKSBpcyBub3QgdXNlZCBpbiB0aGUgZmluZF9rYXNscl9vZmZzZXRz
KCksCj4gaXQncyBtZWFuaW5nbGVzcyBhbmQgbm90IGhhcm1mdWwuIFNvIGl0IGlzIG5vdCB3b3J0
aCBkb2luZyBSRUFEX1NZTUJPTChfc3RleHQpIHRoZXJlCj4gZm9yIG5vdy4KPiAKU291bmRzIGdv
b2QuCgo+Pgo+PiBJbiBhZGRpdGlvbiwgdGhlIGFib3ZlIGNvZGUgY29uZnVzZWQgbWUsIGl0IHdp
bGwgYWx3YXlzIHJldHVybiAwIG9uIHMzOTAocGxlYXNlIHJlZmVyIHRvIG15IGxvZ3MpLgo+IAo+
IFRoZSBhaW0gb2YgZ2V0X2thc2xyX29mZnNldCgpIGhlcmUgaXMgb25seSBzZXR0aW5nIGluZm8t
Pmthc2xyX29mZnNldCB0byB0aGUgdmFsdWUKPiBmcm9tIHZtY29yZWluZm8gZm9yIHRoZSBTWU1C
T0xfSU5JVCgpIG1hY3JvLgo+IChnZXRfa2FzbHJfb2Zmc2V0KCkgcmV0dXJucyB0aGUga2FzbHIg
b2Zmc2V0IGluIHRoZSByZXNvbHZlX2NvbmZpZ19lbnRyeSgpLikKPiAKVGhhbmtzIGZvciB5b3Vy
IGV4cGxhbmF0aW9uLCBLYXp1LgoKPiBCdXQgeWVhaCwgdGhlIGdldF9rYXNscl9vZmZzZXQoU1lN
Qk9MKF9zdGV4dCkpIGlzIGNvbmZ1c2luZyBhbmQgbm90IGdvb2QuCj4gUGFzc2luZyAwIG1pZ2h0
IGJlIGEgYml0IGJldHRlci4uPwo+IApZZXMsIGxvb2tzIGdvb2QgdG8gbWUuCgpMaWFuYm8KPiBU
aGFua3MsCj4gS2F6dQo+IAo+Pgo+PiBUaGFua3MuCj4+Cj4+PiAuLi4KPj4+IEhlcmUgaXMgbXkg
bG9nOgo+Pj4gZ2V0X2thc2xyX29mZnNldF9nZW5lcmFsOiBpbmZvLT5rYXNscl9vZmZzZXQ6IDY3
ZWJjMDAwLCBfdGV4dDoxMDAwMDAsIF9lbmQ6MTBiYTAwMCwgdmFkZHI6MAo+Pj4KPj4+IEFmdGVy
IGFwcGxpZWQgdGhlIGZvbGxvd2luZyBwYXRjaCwgZ290IHRoZSBleHBlY3RlZCByZXN1bHQuCj4+
PiAgaW50Cj4+PiAgZmluZF9rYXNscl9vZmZzZXRzKCkKPj4+ICB7Cj4+PiBAQCAtMzk3Myw2ICs0
MDQyLDExIEBAIGZpbmRfa2FzbHJfb2Zmc2V0cygpCj4+PiAgICAgICAgICAqIGNhbGxlZCB0aGlz
IGZ1bmN0aW9uIGJldHdlZW4gb3Blbl92bWNvcmVpbmZvKCkgYW5kCj4+PiAgICAgICAgICAqIGNs
b3NlX3ZtY29yZWluZm8oKQo+Pj4gICAgICAgICAgKi8KPj4+ICsgICAgICAgUkVBRF9TWU1CT0wo
Il9zdGV4dCIsIF9zdGV4dCk7Cj4+PiArICAgICAgIGlmIChTWU1CT0woX3N0ZXh0KSA9PSBOT1Rf
Rk9VTkRfU1lNQk9MKSB7Cj4+PiArICAgICAgICAgICAgICAgIEVSUk1TRygiQ2FuJ3QgZ2V0IHRo
ZSBzeW1ib2wgb2YgX3N0ZXh0LlxuIik7Cj4+PiArICAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+
Pj4gKyAgICAgICB9Cj4+PiAgICAgICAgIGdldF9rYXNscl9vZmZzZXQoU1lNQk9MKF9zdGV4dCkp
Owo+Pj4KPj4+IEhlcmUgaXMgbXkgbG9nOgo+Pj4gZ2V0X2thc2xyX29mZnNldF9nZW5lcmFsOiBp
bmZvLT5rYXNscl9vZmZzZXQ6IDY3ZWJjMDAwLCBfdGV4dDoxMDAwMDAsIF9lbmQ6MTBiYTAwMCwg
dmFkZHI6NjdmYmMwMDAKPj4+Cj4+PiBCYXNpY2FsbHksIGJlZm9yZSB1c2luZyB0aGUgdmFsdWUg
b2YgU1lNQk9MKF9zdGV4dCksIG5lZWQgdG8gZW5zdXJlIHRoYXQgdGhlIFNZTUJPTChfc3RleHQp
IGlzIHBhcnNlZAo+Pj4gY29ycmVjdGx5Lgo+Pj4KPj4+IFRoYW5rcy4KPj4+Cj4+Pj4gVGhhbmtz
LAo+Pj4+IEthenUKPj4+Pgo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcywKPj4+Pj4+IEthenUK
Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGFua3MsCj4+Pj4+Pj4gTWlraGFpbAo+Pj4+Pj4+Cj4+
Pj4+Pj4gT24gMDkuMTIuMjAxOSAyMzowMiwgS2F6dWhpdG8gSGFnaW8gd3JvdGU6Cj4+Pj4+Pj4+
IEhpIE1pa2hhaWwsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFNvcnJ5IGZvciBsYXRlIHJlcGx5Lgo+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+Pj4+Pj4+IFNpbmNl
IGtlcm5lbCB2NS4yIEtBU0xSIGlzIHN1cHBvcnRlZCBvbiBzMzkwLiBJbiBtYWtlZHVtcGZpbGUg
aG93ZXZlciBubwo+Pj4+Pj4+Pj4gc3VwcG9ydCBoYXMgYmVlbiBhZGRlZCB5ZXQuIFRoaXMgcGF0
Y2ggYWRkcyB0aGUgYXJjaCBzcGVjaWZpYyBmdW5jdGlvbgo+Pj4+Pj4+Pj4gZ2V0X2thc2xyX29m
ZnNldCgpIGZvciBzMzkweC4KPj4+Pj4+Pj4+IFNpbmNlIHRoZSB2YWx1ZXMgaW4gdm1jb3JlaW5m
byBhcmUgYWxyZWFkeSByZWxvY2F0ZWQsIHRoZSBwYXRjaCBpcwo+Pj4+Pj4+Pj4gbWFpbmx5IHJl
bGV2YW50IGZvciB2bWxpbnV4IHByb2Nlc3NpbmcgKC14IG9wdGlvbikuCj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IEluIHRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uIG9mIG1ha2VkdW1wZmlsZSwgdGhlIGdl
dF9rYXNscl9vZmZzZXQodmFkZHIpCj4+Pj4+Pj4+IGlzIHN1cHBvc2VkIHRvIHJldHVybiB0aGUg
S0FTTFIgb2Zmc2V0IG9ubHkgd2hlbiB0aGUgb2Zmc2V0IGlzIG5lZWRlZCB0bwo+Pj4+Pj4+PiBh
ZGQgdG8gdGhlIHZhZGRyLiAgU28gZ2VuZXJhbGx5IHN5bWJvbHMgZnJvbSBrZXJuZWwgKHZtbGlu
dXgpIG5lZWQgaXQsIGJ1dAo+Pj4+Pj4+PiBzeW1ib2xzIGZyb20gbW9kdWxlcyBhcmUgcmVzb2x2
ZWQgZHluYW1pY2FsbHkgYW5kIGRvbid0IG5lZWQgdGhlIG9mZnNldC4KPj4+Pj4+PiBcPgo+Pj4+
Pj4+PiBUaGlzIHBhdGNoIGFsd2F5cyByZXR1cm5zIHRoZSBvZmZzZXQgaWYgYW55LCBhcyBhIHJl
c3VsdCwgSSBndWVzcyB0aGlzIHBhdGNoCj4+Pj4+Pj4+IHdpbGwgbm90IHdvcmsgYXMgZXhwZWN0
ZWQgd2l0aCBtb2R1bGUgc3ltYm9scyBpbiBmaWx0ZXIgY29uZmlnIGZpbGUuCj4+Pj4+Pj4+Cj4+
Pj4+Pj4+IFNvLi4uIEhvdyBhYm91dCBtYWtpbmcgZ2V0X2thc2xyX29mZnNldF9hcm02NCgpIGdl
bmVyYWwgZm9yIG90aGVyIGFyY2hzCj4+Pj4+Pj4+IChnZXRfa2FzbHJfb2Zmc2V0X2dlbmVyYWwo
KSBvciBzb21ldGhpbmcpLCB0aGVuIHVzaW5nIGl0IGFsc28gZm9yIHMzOTA/Cj4+Pj4+Pj4+IElm
IE9LLCBJIGNhbiBkbyB0aGF0IGdlbmVyYWxpemF0aW9uLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGFu
a3MsCj4+Pj4+Pj4+IEthenUKPj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBQaGlsaXBwIFJ1ZG8gPHBydWRvQGxpbnV4LmlibS5jb20+Cj4+Pj4+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBNaWtoYWlsIFphc2xvbmtvIDx6YXNsb25rb0BsaW51eC5pYm0uY29tPgo+Pj4+Pj4+
Pj4gLS0tCj4+Pj4+Pj4+PiAgYXJjaC9zMzkweC5jICAgfCAzMiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+Pj4+Pj4+Pj4gIG1ha2VkdW1wZmlsZS5oIHwgIDMgKystCj4+Pj4+Pj4+
PiAgMiBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvczM5MHguYyBiL2FyY2gvczM5MHguYwo+
Pj4+Pj4+Pj4gaW5kZXggYmY5ZDU4ZS4uODkyZGYxNCAxMDA2NDQKPj4+Pj4+Pj4+IC0tLSBhL2Fy
Y2gvczM5MHguYwo+Pj4+Pj4+Pj4gKysrIGIvYXJjaC9zMzkweC5jCj4+Pj4+Pj4+PiBAQCAtMTIy
LDYgKzEyMiwzOCBAQCBnZXRfbWFjaGRlcF9pbmZvX3MzOTB4KHZvaWQpCj4+Pj4+Pj4+PiAgCXJl
dHVybiBUUlVFOwo+Pj4+Pj4+Pj4gIH0KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiArdW5zaWduZWQgbG9u
Zwo+Pj4+Pj4+Pj4gK2dldF9rYXNscl9vZmZzZXRfczM5MHgodW5zaWduZWQgbG9uZyB2YWRkcikK
Pj4+Pj4+Pj4+ICt7Cj4+Pj4+Pj4+PiArCXVuc2lnbmVkIGludCBpOwo+Pj4+Pj4+Pj4gKwljaGFy
IGJ1ZltCVUZTSVpFX0ZHRVRTXSwgKmVuZHA7Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArCWlmICgh
aW5mby0+ZmlsZV92bWNvcmVpbmZvKQo+Pj4+Pj4+Pj4gKwkJcmV0dXJuIEZBTFNFOwo+Pj4+Pj4+
Pj4gKwo+Pj4+Pj4+Pj4gKwlpZiAoZnNlZWsoaW5mby0+ZmlsZV92bWNvcmVpbmZvLCAwLCBTRUVL
X1NFVCkgPCAwKSB7Cj4+Pj4+Pj4+PiArCQlFUlJNU0coIkNhbid0IHNlZWsgdGhlIHZtY29yZWlu
Zm8gZmlsZSglcykuICVzXG4iLAo+Pj4+Pj4+Pj4gKwkJICAgICAgIGluZm8tPm5hbWVfdm1jb3Jl
aW5mbywgc3RyZXJyb3IoZXJybm8pKTsKPj4+Pj4+Pj4+ICsJCXJldHVybiBGQUxTRTsKPj4+Pj4+
Pj4+ICsJfQo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gKwl3aGlsZSAoZmdldHMoYnVmLCBCVUZTSVpF
X0ZHRVRTLCBpbmZvLT5maWxlX3ZtY29yZWluZm8pKSB7Cj4+Pj4+Pj4+PiArCQlpID0gc3RybGVu
KGJ1Zik7Cj4+Pj4+Pj4+PiArCQlpZiAoIWkpCj4+Pj4+Pj4+PiArCQkJYnJlYWs7Cj4+Pj4+Pj4+
PiArCQlpZiAoYnVmW2kgLSAxXSA9PSAnXG4nKQo+Pj4+Pj4+Pj4gKwkJCWJ1ZltpIC0gMV0gPSAn
XDAnOwo+Pj4+Pj4+Pj4gKwkJaWYgKHN0cm5jbXAoYnVmLCBTVFJfS0VSTkVMT0ZGU0VULAo+Pj4+
Pj4+Pj4gKwkJCSAgICBzdHJsZW4oU1RSX0tFUk5FTE9GRlNFVCkpID09IDApIHsKPj4+Pj4+Pj4+
ICsJCQlpbmZvLT5rYXNscl9vZmZzZXQgPQo+Pj4+Pj4+Pj4gKwkJCQlzdHJ0b3VsKGJ1ZiArIHN0
cmxlbihTVFJfS0VSTkVMT0ZGU0VUKSwgJmVuZHAsIDE2KTsKPj4+Pj4+Pj4+ICsJCQlERUJVR19N
U0coImluZm8tPmthc2xyX29mZnNldDogJWx4XG4iLCBpbmZvLT5rYXNscl9vZmZzZXQpOwo+Pj4+
Pj4+Pj4gKwkJfQo+Pj4+Pj4+Pj4gKwl9Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArCXJldHVybiBp
bmZvLT5rYXNscl9vZmZzZXQ7Cj4+Pj4+Pj4+PiArfQo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gIHN0
YXRpYyBpbnQKPj4+Pj4+Pj4+ICBpc192bWFsbG9jX2FkZHJfczM5MHgodW5zaWduZWQgbG9uZyB2
YWRkcikKPj4+Pj4+Pj4+ICB7Cj4+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvbWFrZWR1bXBmaWxlLmgg
Yi9tYWtlZHVtcGZpbGUuaAo+Pj4+Pj4+Pj4gaW5kZXggYWMxMWU5MC4uMjZmNjI0NyAxMDA2NDQK
Pj4+Pj4+Pj4+IC0tLSBhL21ha2VkdW1wZmlsZS5oCj4+Pj4+Pj4+PiArKysgYi9tYWtlZHVtcGZp
bGUuaAo+Pj4+Pj4+Pj4gQEAgLTEwNzEsMTEgKzEwNzEsMTIgQEAgdW5zaWduZWQgbG9uZyBsb25n
IHZhZGRyX3RvX3BhZGRyX3BwYyh1bnNpZ25lZCBsb25nIHZhZGRyKTsKPj4+Pj4+Pj4+ICBpbnQg
Z2V0X21hY2hkZXBfaW5mb19zMzkweCh2b2lkKTsKPj4+Pj4+Pj4+ICB1bnNpZ25lZCBsb25nIGxv
bmcgdmFkZHJfdG9fcGFkZHJfczM5MHgodW5zaWduZWQgbG9uZyB2YWRkcik7Cj4+Pj4+Pj4+PiAg
aW50IGlzX2lvbWVtX3BoeXNfYWRkcl9zMzkweCh1bnNpZ25lZCBsb25nIGFkZHIpOwo+Pj4+Pj4+
Pj4gK3Vuc2lnbmVkIGxvbmcgZ2V0X2thc2xyX29mZnNldF9zMzkweCh1bnNpZ25lZCBsb25nIHZh
ZGRyKTsKPj4+Pj4+Pj4+ICAjZGVmaW5lIGZpbmRfdm1lbW1hcCgpCQlzdHViX2ZhbHNlKCkKPj4+
Pj4+Pj4+ICAjZGVmaW5lIGdldF9waHlzX2Jhc2UoKQkJc3R1Yl90cnVlKCkKPj4+Pj4+Pj4+ICAj
ZGVmaW5lIGdldF9tYWNoZGVwX2luZm8oKQlnZXRfbWFjaGRlcF9pbmZvX3MzOTB4KCkKPj4+Pj4+
Pj4+ICAjZGVmaW5lIGdldF92ZXJzaW9uZGVwX2luZm8oKQlzdHViX3RydWUoKQo+Pj4+Pj4+Pj4g
LSNkZWZpbmUgZ2V0X2thc2xyX29mZnNldChYKQlzdHViX2ZhbHNlKCkKPj4+Pj4+Pj4+ICsjZGVm
aW5lIGdldF9rYXNscl9vZmZzZXQoWCkJZ2V0X2thc2xyX29mZnNldF9zMzkweChYKQo+Pj4+Pj4+
Pj4gICNkZWZpbmUgdmFkZHJfdG9fcGFkZHIoWCkJdmFkZHJfdG9fcGFkZHJfczM5MHgoWCkKPj4+
Pj4+Pj4+ICAjZGVmaW5lIHBhZGRyX3RvX3ZhZGRyKFgpCXBhZGRyX3RvX3ZhZGRyX2dlbmVyYWwo
WCkKPj4+Pj4+Pj4+ICAjZGVmaW5lIGlzX3BoeXNfYWRkcihYKQkJaXNfaW9tZW1fcGh5c19hZGRy
X3MzOTB4KFgpCj4+Pj4+Pj4+PiAtLQo+Pj4+Pj4+Pj4gMi4xNy4xCj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pgo+Pj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBrZXhlYyBtYWlsaW5nIGxp
c3QKPj4+PiBrZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo+Pj4+Cj4+Pgo+Pj4KPj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBrZXhlYyBtYWlsaW5n
IGxpc3QKPj4+IGtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMKPj4+Cj4+Cj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0Cmtl
eGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9rZXhlYwo=
