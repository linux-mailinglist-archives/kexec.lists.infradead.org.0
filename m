Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F87412AA23
	for <lists+kexec@lfdr.de>; Thu, 26 Dec 2019 05:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hmlqnXNiJCxhUpvoi1kaY1TzSwY38jtx6Pn6k5VRdeU=; b=f/8pH2NoCog5hF2oW9/kQNXJUo
	gSvc7IpDvOs5ewDsTnLMpyljUTYjEh+XdRlOzVdlty8jV8fCYmqQjDywfGejpPA4d8pWj8DK6JCYE
	1bqQ0yxLLbKbdl9dbQ9zjKzV4YmhSCCTMnpuxTg4PDNtarkyWut50Jd0M/JXEo6JVs5ac5xMc0syI
	1yahKVk+VIQqIcfvPHLxsFnQQutj140mlmT2tWdpewx1zPTzkQR1Mr2Qw0Co62obN5Pm1OzpjubYZ
	dqGvo0jjhHsYGkL7dBJcUFyoz7uQC3hcjBBlrmoSJcAotPcf9zFdCLjiyHUJkW6CYvlhyra71j22H
	gB/6vGoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikKQh-0005cn-HV; Thu, 26 Dec 2019 04:07:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikKQd-0005cG-JR
 for kexec@lists.infradead.org; Thu, 26 Dec 2019 04:07:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577333234;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I7dyMYSAZFWPQBGhvxu6/qNGj6604nBOvYUawBjp4t8=;
 b=YSPYd3GjBDFZIdZ4snyE/Lnh4CYLm65axuNL/Uks1vzBlbVdR4b2WaiDS1JXibTfl5rRNp
 vDug9qry6T4IIvYP7a2F/QfYThXAbYPV/68WOWpVJLqKG2Hvu8czeoDPAHfKIqzMY+DTkE
 MkExz8AgmvaIUs8XecVnp36N01U2wMg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-8jZOvjcnNha2k3u6Zf_S_A-1; Wed, 25 Dec 2019 23:07:10 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B71B1005513;
 Thu, 26 Dec 2019 04:07:09 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-107.pek2.redhat.com
 [10.72.12.107])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DD3C5C54A;
 Thu, 26 Dec 2019 04:07:05 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
To: kexec@lists.infradead.org, k-hagio@ab.jp.nec.com,
 Mikhail Zaslonko <zaslonko@linux.ibm.com>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
 <323f61d4-6aab-a0b4-faa3-e41756fb9913@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
 <8fd807f1-c296-1a34-e42a-a102df62f3a0@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03598540@BPXM09GP.gisp.nec.co.jp>
 <726b8852-77af-b440-99b2-6b5a7b05e674@redhat.com>
From: lijiang <lijiang@redhat.com>
Message-ID: <2aa868b8-83f4-cb23-9acf-178a9ab8144a@redhat.com>
Date: Thu, 26 Dec 2019 12:07:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <726b8852-77af-b440-99b2-6b5a7b05e674@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 8jZOvjcnNha2k3u6Zf_S_A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_200715_720241_015C80D6 
X-CRM114-Status: GOOD (  31.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMuaciDI25pelIDExOjM4LCBsaWppYW5nIOWGmemBkzoKPiBIaSwgS2F6dSBh
bmQgTWlraGFpbCwKPiAKPj4gSGkgTWlraGFpbCwKPj4KPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4+PiBIaSwKPj4+Cj4+PiBPbiAxMi4xMi4yMDE5IDE3OjEyLCBLYXp1aGl0byBIYWdp
byB3cm90ZToKPj4+PiBIaSBNaWtoYWlsLAo+Pj4+Cj4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4+Pj4+IEhlbGxvIEthenUsCj4+Pj4+Cj4+Pj4+IEkgdGhpbmsgd2UgY2FuIHRyeSB0
byBnZW5lcmFsaXplIHRoZSBrYXNsciBvZmZzZXQgZXh0cmFjdGlvbi4KPj4+Pj4gSSB3b24ndCBz
cGVhayBmb3Igb3RoZXIgYXJjaGl0ZWN0dXJlcywgYnV0IGZvciBzMzkwIHRoYXQgZ2V0X2thc2xy
X29mZnNldF9hcm02NCgpCj4+Pj4+IHNob3VsZCB3b3JrIGZpbmUuIFRoZSBvbmx5IGNvbmNlcm4g
b2YgbWluZSBpcyB0aGlzIFRPRE8gc3RhdGVtZW50Ogo+Pj4+Pgo+Pj4+PiBpZiAoX3RleHQgPD0g
dmFkZHIgJiYgdmFkZHIgPD0gX2VuZCkgewo+Pj4+PiAJREVCVUdfTVNHKCJpbmZvLT5rYXNscl9v
ZmZzZXQ6ICVseFxuIiwgaW5mby0+a2FzbHJfb2Zmc2V0KTsKPj4+Pj4gCXJldHVybiBpbmZvLT5r
YXNscl9vZmZzZXQ7Cj4+Pj4+IAl9IGVsc2Ugewo+Pj4+PiAJLyoKPj4+Pj4gCSogVE9ETzogd2Ug
bmVlZCB0byBjaGVjayBpZiBpdCBpcyB2bWFsbG9jL3ZtbWVtbWFwL21vZHVsZQo+Pj4+PiAJKiBh
ZGRyZXNzLCB3ZSB3aWxsIGhhdmUgZGlmZmVyZW50IG9mZnNldAo+Pj4+PiAJKi8KPj4+Pj4gCXJl
dHVybiAwOwo+Pj4+PiB9Cj4+Pj4+Cj4+Pj4+IENvdWxkIHlvdSBleHBsYWluIHRoaXMgb25lPwo+
Pj4+Cj4+Pj4gUHJvYmFibHkgaXQgd2FzIGNvbnNpZGVyZWQgdGhhdCB0aGUgY2hlY2sgd291bGQg
YmUgbmVlZGVkIHRvIHN1cHBvcnQKPj4+PiB0aGUgd2hvbGUgS0FTTFIgYmVoYXZpb3Igd2hlbiBn
ZXRfa2FzbHJfb2Zmc2V0X3g4Nl82NCgpIHdhcyB3cml0dGVuCj4+Pj4gb3JpZ2luYWxseS4KPj4+
Pgo+Pj4+IEJ1dCBpbiB0aGUgY3VycmVudCBtYWtlZHVtcGZpbGUgZm9yIHg4Nl82NCBhbmQgYXJt
NjQgc3VwcG9ydGluZyBLQVNMUiwKPj4+PiB0aGUgb2Zmc2V0IHdlIG5lZWQgaXMgdGhlIG9uZSBm
b3Igc3ltYm9sIGFkZHJlc3NlcyBpbiB2bWxpbnV4IG9ubHkuCj4+Pj4gQXMgSSBzYWlkIGJlbG93
LCBtb2R1bGUgc3ltYm9sIGFkZHJlc3NlcyBhcmUgcmV0cmlldmVkIGZyb20gdm1jb3JlLgo+Pj4+
IE90aGVyIGFkZHJlc3NlcyBzaG91bGQgbm90IGJlIHBhc3NlZCB0byB0aGUgZnVuY3Rpb24gZm9y
IG5vdywgYXMgZmFyCj4+Pj4gYXMgSSBrbm93Lgo+Pj4+Cj4+Pj4gU28gSSB0aGluayB0aGUgVE9E
TyBjb21tZW50IGlzIGNvbmZ1c2luZywgYW5kIGl0IHdvdWxkIGJlIGJldHRlciB0bwo+Pj4+IHJl
bW92ZSBpdCBvciBjaGFuZ2UgaXQgdG8gc29tZXRoaW5nIGxpa2U6Cj4+Pj4gLyoKPj4+PiAgKiBS
ZXR1cm5zIDAgaWYgdmFkZHIgZG9lcyBub3QgbmVlZCB0aGUgb2Zmc2V0IHRvIGJlIGFkZGVkLAo+
Pj4+ICAqIGUuZy4gZm9yIG1vZHVsZSBhZGRyZXNzLgo+Pj4+ICAqLwo+Pj4+Cj4+Pj4gQnV0IGlm
IHMzOTAgdXNlcyBnZXRfa2FzbHJfb2Zmc2V0KCkgaW4gaXRzIGFyY2gtc3BlY2lmaWMgY29kZSB0
bwo+Pj4+IGFkanVzdCBhZGRyZXNzZXMgb3RoZXIgdGhhbiBrZXJuZWwgdGV4dCBhZGRyZXNzLCB3
ZSBtaWdodCBuZWVkIHRvCj4+Pj4gbW9kaWZ5IGl0IGZvciBzMzkwLCBub3QgZ2VuZXJhbGl6ZSBp
dC4KPj4+Cj4+PiBDdXJyZW50bHksIHMzOTAgZG9lc24ndCB1c2UgZ2V0X2thc2xyX29mZnNldCgp
IGluIGl0cyBhcmNoLXNwZWNpZmljCj4+PiBjb2RlLgo+Pgo+PiBPSywgSSBwdXNoZWQgYSBwYXRj
aCB0aGF0IGdlbmVyYWxpemVzIGl0IHRvIG15IHRlc3QgcmVwb3NpdG9yeS4KPj4gQ291bGQgeW91
IGVuYWJsZSBzMzkwIHRvIHVzZSBpdCBhbmQgdGVzdD8KPj4gaHR0cHM6Ly9naXRodWIuY29tL2st
aGFnaW8vbWFrZWR1bXBmaWxlL3RyZWUvYWRkLWdldF9rYXNscl9vZmZzZXRfZ2VuZXJhbAo+Pgo+
IAo+IEkgZW5hYmxlZCBpdCBvbiBzMzkwIGFzIGJlbG93IGFuZCB0ZXN0ZWQsIGl0IHdvcmtlZC4K
PiAKPiBAQCAtMTA3NSw3ICsxMDc1LDcgQEAgaW50IGlzX2lvbWVtX3BoeXNfYWRkcl9zMzkweCh1
bnNpZ25lZCBsb25nIGFkZHIpOwo+ICAjZGVmaW5lIGdldF9waHlzX2Jhc2UoKSAgICAgICAgICAg
ICAgICBzdHViX3RydWUoKQo+ICAjZGVmaW5lIGdldF9tYWNoZGVwX2luZm8oKSAgICAgZ2V0X21h
Y2hkZXBfaW5mb19zMzkweCgpCj4gICNkZWZpbmUgZ2V0X3ZlcnNpb25kZXBfaW5mbygpICBzdHVi
X3RydWUoKQo+IC0jZGVmaW5lIGdldF9rYXNscl9vZmZzZXQoWCkgICAgc3R1Yl9mYWxzZSgpCj4g
KyNkZWZpbmUgZ2V0X2thc2xyX29mZnNldChYKSAgICBnZXRfa2FzbHJfb2Zmc2V0X2dlbmVyYWwo
WCkKPiAgI2RlZmluZSB2YWRkcl90b19wYWRkcihYKSAgICAgIHZhZGRyX3RvX3BhZGRyX3MzOTB4
KFgpCj4gCj4gQnV0LCB0aGVyZSBpcyBzdGlsbCBhIHByb2JsZW0gdGhhdCBuZWVkcyB0byBiZSBp
bXByb3ZlZC4gSW4gdGhlIGZpbmRfa2FzbHJfb2Zmc2V0cygpLAo+IHRoZSB2YWx1ZSBvZiBTWU1C
T0woX3N0ZXh0KSBpcyBhbHdheXMgMCh6ZXJvKSBhbmQgaXQgaXMgcGFzc2VkIHRvIHRoZSBnZXRf
a2FzbHJfb2Zmc2V0KCkuCj4gRm9yIHRoZSBmb2xsb3dpbmcgY29kZSBpbiB0aGUgZ2V0X2thc2xy
X29mZnNldF9nZW5lcmFsKCksIGl0IGRvZXMgbm90IHdvcmsgYXMgZXhwZWN0ZWQuCj4gLi4uCj4g
CWlmIChfdGV4dCA8PSB2YWRkciAmJiB2YWRkciA8PSBfZW5kKQo+IAkJcmV0dXJuIGluZm8tPmth
c2xyX29mZnNldDsKPiAJZWxzZQo+IAkJcmV0dXJuIDA7CgpJbiBhZGRpdGlvbiwgdGhlIGFib3Zl
IGNvZGUgY29uZnVzZWQgbWUsIGl0IHdpbGwgYWx3YXlzIHJldHVybiAwIG9uIHMzOTAocGxlYXNl
IHJlZmVyIHRvIG15IGxvZ3MpLgoKVGhhbmtzLgoKPiAuLi4KPiBIZXJlIGlzIG15IGxvZzoKPiBn
ZXRfa2FzbHJfb2Zmc2V0X2dlbmVyYWw6IGluZm8tPmthc2xyX29mZnNldDogNjdlYmMwMDAsIF90
ZXh0OjEwMDAwMCwgX2VuZDoxMGJhMDAwLCB2YWRkcjowCj4gCj4gQWZ0ZXIgYXBwbGllZCB0aGUg
Zm9sbG93aW5nIHBhdGNoLCBnb3QgdGhlIGV4cGVjdGVkIHJlc3VsdC4KPiAgaW50Cj4gIGZpbmRf
a2FzbHJfb2Zmc2V0cygpCj4gIHsKPiBAQCAtMzk3Myw2ICs0MDQyLDExIEBAIGZpbmRfa2FzbHJf
b2Zmc2V0cygpCj4gICAgICAgICAgKiBjYWxsZWQgdGhpcyBmdW5jdGlvbiBiZXR3ZWVuIG9wZW5f
dm1jb3JlaW5mbygpIGFuZAo+ICAgICAgICAgICogY2xvc2Vfdm1jb3JlaW5mbygpCj4gICAgICAg
ICAgKi8KPiArICAgICAgIFJFQURfU1lNQk9MKCJfc3RleHQiLCBfc3RleHQpOwo+ICsgICAgICAg
aWYgKFNZTUJPTChfc3RleHQpID09IE5PVF9GT1VORF9TWU1CT0wpIHsKPiArICAgICAgICAgICAg
ICAgIEVSUk1TRygiQ2FuJ3QgZ2V0IHRoZSBzeW1ib2wgb2YgX3N0ZXh0LlxuIik7Cj4gKyAgICAg
ICAgICAgICAgICBnb3RvIG91dDsKPiArICAgICAgIH0KPiAgICAgICAgIGdldF9rYXNscl9vZmZz
ZXQoU1lNQk9MKF9zdGV4dCkpOwo+IAo+IEhlcmUgaXMgbXkgbG9nOgo+IGdldF9rYXNscl9vZmZz
ZXRfZ2VuZXJhbDogaW5mby0+a2FzbHJfb2Zmc2V0OiA2N2ViYzAwMCwgX3RleHQ6MTAwMDAwLCBf
ZW5kOjEwYmEwMDAsIHZhZGRyOjY3ZmJjMDAwCj4gCj4gQmFzaWNhbGx5LCBiZWZvcmUgdXNpbmcg
dGhlIHZhbHVlIG9mIFNZTUJPTChfc3RleHQpLCBuZWVkIHRvIGVuc3VyZSB0aGF0IHRoZSBTWU1C
T0woX3N0ZXh0KSBpcyBwYXJzZWQKPiBjb3JyZWN0bHkuCj4gCj4gVGhhbmtzLgo+IAo+PiBUaGFu
a3MsCj4+IEthenUKPj4KPj4+Cj4+Pj4KPj4+PiBUaGFua3MsCj4+Pj4gS2F6dQo+Pj4+Cj4+Pj4+
Cj4+Pj4+IFRoYW5rcywKPj4+Pj4gTWlraGFpbAo+Pj4+Pgo+Pj4+PiBPbiAwOS4xMi4yMDE5IDIz
OjAyLCBLYXp1aGl0byBIYWdpbyB3cm90ZToKPj4+Pj4+IEhpIE1pa2hhaWwsCj4+Pj4+Pgo+Pj4+
Pj4gU29ycnkgZm9yIGxhdGUgcmVwbHkuCj4+Pj4+Pgo+Pj4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4+Pj4+Pj4gU2luY2Uga2VybmVsIHY1LjIgS0FTTFIgaXMgc3VwcG9ydGVkIG9u
IHMzOTAuIEluIG1ha2VkdW1wZmlsZSBob3dldmVyIG5vCj4+Pj4+Pj4gc3VwcG9ydCBoYXMgYmVl
biBhZGRlZCB5ZXQuIFRoaXMgcGF0Y2ggYWRkcyB0aGUgYXJjaCBzcGVjaWZpYyBmdW5jdGlvbgo+
Pj4+Pj4+IGdldF9rYXNscl9vZmZzZXQoKSBmb3IgczM5MHguCj4+Pj4+Pj4gU2luY2UgdGhlIHZh
bHVlcyBpbiB2bWNvcmVpbmZvIGFyZSBhbHJlYWR5IHJlbG9jYXRlZCwgdGhlIHBhdGNoIGlzCj4+
Pj4+Pj4gbWFpbmx5IHJlbGV2YW50IGZvciB2bWxpbnV4IHByb2Nlc3NpbmcgKC14IG9wdGlvbiku
Cj4+Pj4+Pgo+Pj4+Pj4gSW4gdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2YgbWFrZWR1bXBm
aWxlLCB0aGUgZ2V0X2thc2xyX29mZnNldCh2YWRkcikKPj4+Pj4+IGlzIHN1cHBvc2VkIHRvIHJl
dHVybiB0aGUgS0FTTFIgb2Zmc2V0IG9ubHkgd2hlbiB0aGUgb2Zmc2V0IGlzIG5lZWRlZCB0bwo+
Pj4+Pj4gYWRkIHRvIHRoZSB2YWRkci4gIFNvIGdlbmVyYWxseSBzeW1ib2xzIGZyb20ga2VybmVs
ICh2bWxpbnV4KSBuZWVkIGl0LCBidXQKPj4+Pj4+IHN5bWJvbHMgZnJvbSBtb2R1bGVzIGFyZSBy
ZXNvbHZlZCBkeW5hbWljYWxseSBhbmQgZG9uJ3QgbmVlZCB0aGUgb2Zmc2V0Lgo+Pj4+PiBcPgo+
Pj4+Pj4gVGhpcyBwYXRjaCBhbHdheXMgcmV0dXJucyB0aGUgb2Zmc2V0IGlmIGFueSwgYXMgYSBy
ZXN1bHQsIEkgZ3Vlc3MgdGhpcyBwYXRjaAo+Pj4+Pj4gd2lsbCBub3Qgd29yayBhcyBleHBlY3Rl
ZCB3aXRoIG1vZHVsZSBzeW1ib2xzIGluIGZpbHRlciBjb25maWcgZmlsZS4KPj4+Pj4+Cj4+Pj4+
PiBTby4uLiBIb3cgYWJvdXQgbWFraW5nIGdldF9rYXNscl9vZmZzZXRfYXJtNjQoKSBnZW5lcmFs
IGZvciBvdGhlciBhcmNocwo+Pj4+Pj4gKGdldF9rYXNscl9vZmZzZXRfZ2VuZXJhbCgpIG9yIHNv
bWV0aGluZyksIHRoZW4gdXNpbmcgaXQgYWxzbyBmb3IgczM5MD8KPj4+Pj4+IElmIE9LLCBJIGNh
biBkbyB0aGF0IGdlbmVyYWxpemF0aW9uLgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcywKPj4+Pj4+IEth
enUKPj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFJ1ZG8gPHBy
dWRvQGxpbnV4LmlibS5jb20+Cj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogTWlraGFpbCBaYXNsb25r
byA8emFzbG9ua29AbGludXguaWJtLmNvbT4KPj4+Pj4+PiAtLS0KPj4+Pj4+PiAgYXJjaC9zMzkw
eC5jICAgfCAzMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4+ICBtYWtl
ZHVtcGZpbGUuaCB8ICAzICsrLQo+Pj4+Pj4+ICAyIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL3Mz
OTB4LmMgYi9hcmNoL3MzOTB4LmMKPj4+Pj4+PiBpbmRleCBiZjlkNThlLi44OTJkZjE0IDEwMDY0
NAo+Pj4+Pj4+IC0tLSBhL2FyY2gvczM5MHguYwo+Pj4+Pj4+ICsrKyBiL2FyY2gvczM5MHguYwo+
Pj4+Pj4+IEBAIC0xMjIsNiArMTIyLDM4IEBAIGdldF9tYWNoZGVwX2luZm9fczM5MHgodm9pZCkK
Pj4+Pj4+PiAgCXJldHVybiBUUlVFOwo+Pj4+Pj4+ICB9Cj4+Pj4+Pj4KPj4+Pj4+PiArdW5zaWdu
ZWQgbG9uZwo+Pj4+Pj4+ICtnZXRfa2FzbHJfb2Zmc2V0X3MzOTB4KHVuc2lnbmVkIGxvbmcgdmFk
ZHIpCj4+Pj4+Pj4gK3sKPj4+Pj4+PiArCXVuc2lnbmVkIGludCBpOwo+Pj4+Pj4+ICsJY2hhciBi
dWZbQlVGU0laRV9GR0VUU10sICplbmRwOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArCWlmICghaW5mby0+
ZmlsZV92bWNvcmVpbmZvKQo+Pj4+Pj4+ICsJCXJldHVybiBGQUxTRTsKPj4+Pj4+PiArCj4+Pj4+
Pj4gKwlpZiAoZnNlZWsoaW5mby0+ZmlsZV92bWNvcmVpbmZvLCAwLCBTRUVLX1NFVCkgPCAwKSB7
Cj4+Pj4+Pj4gKwkJRVJSTVNHKCJDYW4ndCBzZWVrIHRoZSB2bWNvcmVpbmZvIGZpbGUoJXMpLiAl
c1xuIiwKPj4+Pj4+PiArCQkgICAgICAgaW5mby0+bmFtZV92bWNvcmVpbmZvLCBzdHJlcnJvcihl
cnJubykpOwo+Pj4+Pj4+ICsJCXJldHVybiBGQUxTRTsKPj4+Pj4+PiArCX0KPj4+Pj4+PiArCj4+
Pj4+Pj4gKwl3aGlsZSAoZmdldHMoYnVmLCBCVUZTSVpFX0ZHRVRTLCBpbmZvLT5maWxlX3ZtY29y
ZWluZm8pKSB7Cj4+Pj4+Pj4gKwkJaSA9IHN0cmxlbihidWYpOwo+Pj4+Pj4+ICsJCWlmICghaSkK
Pj4+Pj4+PiArCQkJYnJlYWs7Cj4+Pj4+Pj4gKwkJaWYgKGJ1ZltpIC0gMV0gPT0gJ1xuJykKPj4+
Pj4+PiArCQkJYnVmW2kgLSAxXSA9ICdcMCc7Cj4+Pj4+Pj4gKwkJaWYgKHN0cm5jbXAoYnVmLCBT
VFJfS0VSTkVMT0ZGU0VULAo+Pj4+Pj4+ICsJCQkgICAgc3RybGVuKFNUUl9LRVJORUxPRkZTRVQp
KSA9PSAwKSB7Cj4+Pj4+Pj4gKwkJCWluZm8tPmthc2xyX29mZnNldCA9Cj4+Pj4+Pj4gKwkJCQlz
dHJ0b3VsKGJ1ZiArIHN0cmxlbihTVFJfS0VSTkVMT0ZGU0VUKSwgJmVuZHAsIDE2KTsKPj4+Pj4+
PiArCQkJREVCVUdfTVNHKCJpbmZvLT5rYXNscl9vZmZzZXQ6ICVseFxuIiwgaW5mby0+a2FzbHJf
b2Zmc2V0KTsKPj4+Pj4+PiArCQl9Cj4+Pj4+Pj4gKwl9Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsJcmV0
dXJuIGluZm8tPmthc2xyX29mZnNldDsKPj4+Pj4+PiArfQo+Pj4+Pj4+ICsKPj4+Pj4+PiAgc3Rh
dGljIGludAo+Pj4+Pj4+ICBpc192bWFsbG9jX2FkZHJfczM5MHgodW5zaWduZWQgbG9uZyB2YWRk
cikKPj4+Pj4+PiAgewo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9tYWtlZHVtcGZpbGUuaCBiL21ha2Vk
dW1wZmlsZS5oCj4+Pj4+Pj4gaW5kZXggYWMxMWU5MC4uMjZmNjI0NyAxMDA2NDQKPj4+Pj4+PiAt
LS0gYS9tYWtlZHVtcGZpbGUuaAo+Pj4+Pj4+ICsrKyBiL21ha2VkdW1wZmlsZS5oCj4+Pj4+Pj4g
QEAgLTEwNzEsMTEgKzEwNzEsMTIgQEAgdW5zaWduZWQgbG9uZyBsb25nIHZhZGRyX3RvX3BhZGRy
X3BwYyh1bnNpZ25lZCBsb25nIHZhZGRyKTsKPj4+Pj4+PiAgaW50IGdldF9tYWNoZGVwX2luZm9f
czM5MHgodm9pZCk7Cj4+Pj4+Pj4gIHVuc2lnbmVkIGxvbmcgbG9uZyB2YWRkcl90b19wYWRkcl9z
MzkweCh1bnNpZ25lZCBsb25nIHZhZGRyKTsKPj4+Pj4+PiAgaW50IGlzX2lvbWVtX3BoeXNfYWRk
cl9zMzkweCh1bnNpZ25lZCBsb25nIGFkZHIpOwo+Pj4+Pj4+ICt1bnNpZ25lZCBsb25nIGdldF9r
YXNscl9vZmZzZXRfczM5MHgodW5zaWduZWQgbG9uZyB2YWRkcik7Cj4+Pj4+Pj4gICNkZWZpbmUg
ZmluZF92bWVtbWFwKCkJCXN0dWJfZmFsc2UoKQo+Pj4+Pj4+ICAjZGVmaW5lIGdldF9waHlzX2Jh
c2UoKQkJc3R1Yl90cnVlKCkKPj4+Pj4+PiAgI2RlZmluZSBnZXRfbWFjaGRlcF9pbmZvKCkJZ2V0
X21hY2hkZXBfaW5mb19zMzkweCgpCj4+Pj4+Pj4gICNkZWZpbmUgZ2V0X3ZlcnNpb25kZXBfaW5m
bygpCXN0dWJfdHJ1ZSgpCj4+Pj4+Pj4gLSNkZWZpbmUgZ2V0X2thc2xyX29mZnNldChYKQlzdHVi
X2ZhbHNlKCkKPj4+Pj4+PiArI2RlZmluZSBnZXRfa2FzbHJfb2Zmc2V0KFgpCWdldF9rYXNscl9v
ZmZzZXRfczM5MHgoWCkKPj4+Pj4+PiAgI2RlZmluZSB2YWRkcl90b19wYWRkcihYKQl2YWRkcl90
b19wYWRkcl9zMzkweChYKQo+Pj4+Pj4+ICAjZGVmaW5lIHBhZGRyX3RvX3ZhZGRyKFgpCXBhZGRy
X3RvX3ZhZGRyX2dlbmVyYWwoWCkKPj4+Pj4+PiAgI2RlZmluZSBpc19waHlzX2FkZHIoWCkJCWlz
X2lvbWVtX3BoeXNfYWRkcl9zMzkweChYKQo+Pj4+Pj4+IC0tCj4+Pj4+Pj4gMi4xNy4xCj4+Pj4+
Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Cj4+Pj4KPj4KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4+IGtl
eGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9rZXhlYwo+Pgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4ga2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8va2V4ZWMKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
