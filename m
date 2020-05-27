Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDBB1E36E0
	for <lists+kexec@lfdr.de>; Wed, 27 May 2020 06:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCNFTioaKxTnq9WupukAjPNN/M7Dirdb77VilAmFlZM=; b=Pec1aotJoO36YM
	5vQmtb7rWNJrPyF/31rgh0PLpUjquJu2HNkbYKCfF+IJ5hUY3Cg7yRJlRikNxERTglwRRmPOBOkGo
	wu5ZHcwn+f5ygGXaghIU2iQVXAhYj2/5T2t/FvWYv8UesA/TKV3RXIN+705rA9LKVPq87wP+GylBl
	rnmEFSM67YpKjwd+FVpErDEdj7U0VdL+i4FZk1k2qM5dDKpiFHE8N45VcFL1xfKx2+SVw+4MzAHLE
	qWf2Exzq82CS+jr/BidcITAQfGZwpZlYNUllYvGy5CgtZXWVGEjn70VJ0vXW/ladQtAq82sAj+vHV
	u/X1RmG09RJPCBfeMIow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdnMk-0006uU-4a; Wed, 27 May 2020 04:08:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdnMg-0006t5-EN
 for kexec@lists.infradead.org; Wed, 27 May 2020 04:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590552505;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HNBN9I3GKdXmb2gltM0hVnCri1z/6RmaleZWAYCiNNc=;
 b=gUSb8iPiSV1yZCj2FGk9zYK9P3wsioZHPOCbPI7noTqaoybMDxuvHOEKER8n4C3lJUDw03
 bvA5WSQEChtWPPgi2yRKIyuKo/qgEmfVToWDNBTsr53EaVTJtiwEMBqAJ8CEWgNJfhuMgH
 raWbJWLNm2Nn2BRmFiqU3/bCqFxuOWU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-KavK4lNnP42joJdk9iYHfQ-1; Wed, 27 May 2020 00:08:23 -0400
X-MC-Unique: KavK4lNnP42joJdk9iYHfQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C940E100A61D;
 Wed, 27 May 2020 04:08:21 +0000 (UTC)
Received: from [10.72.12.206] (ovpn-12-206.pek2.redhat.com [10.72.12.206])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BC64D648DB;
 Wed, 27 May 2020 04:08:15 +0000 (UTC)
Subject: Re: [PATCH] kexec: Do not verify the signature without the lockdown
 or mandatory signature
From: lijiang <lijiang@redhat.com>
To: Jiri Bohac <jbohac@suse.cz>
References: <20200525052351.24134-1-lijiang@redhat.com>
 <20200526135935.ffkfulsjf7xrep63@dwarf.suse.cz>
 <07a65a70-3764-f62f-705c-049b8d409316@redhat.com>
Message-ID: <4da44e94-a839-2033-29d2-90bebd4ee1e2@redhat.com>
Date: Wed, 27 May 2020 12:08:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <07a65a70-3764-f62f-705c-049b8d409316@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_210826_561812_EF5B00EC 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bhe@redhat.com, kexec@lists.infradead.org, jmorris@namei.org,
 mjg59@google.com, linux-kernel@vger.kernel.org, ebiederm@xmission.com,
 dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMjDlubQwNeaciDI35pelIDExOjE1LCBsaWppYW5nIOWGmemBkzoKPiDlnKggMjAyMOW5
tDA15pyIMjbml6UgMjE6NTksIEppcmkgQm9oYWMg5YaZ6YGTOgo+PiBPbiBNb24sIE1heSAyNSwg
MjAyMCBhdCAwMToyMzo1MVBNICswODAwLCBMaWFuYm8gSmlhbmcgd3JvdGU6Cj4+PiBTbywgaGVy
ZSwgbGV0J3Mgc2ltcGxpZnkgdGhlIGxvZ2ljIHRvIGltcHJvdmUgY29kZSByZWFkYWJpbGl0eS4g
SWYgdGhlCj4+PiBLRVhFQ19TSUdfRk9SQ0UgZW5hYmxlZCBvciBrZXhlYyBsb2NrZG93biBlbmFi
bGVkLCBzaWduYXR1cmUgdmVyaWZpY2F0aW9uCj4+PiBpcyBtYW5kYXRlZC4gT3RoZXJ3aXNlLCB3
ZSBsaWZ0IHRoZSBiYXIgZm9yIGFueSBrZXJuZWwgaW1hZ2UuCj4+Cj4+IEkgYWdyZWUgY29tcGxl
dGVseTsgaW4gZmFjdCB0aGF0IHdhcyBteSBpbnRlbnRpb24gd2hlbgo+PiBpbnRyb2R1Y2luZyB0
aGUgY29kZSwgYnV0IEkgZ290IG92ZXJydWxlZCBhYm91dCB0aGUgcmV0dXJuIGNvZGVzOgo+PiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMTgwMTE5MTI1NDI1Lmw3Mm1leXljMnF0cnJp
d2VAZHdhcmYuc3VzZS5jei8KPj4KPj4gSSBsaWtlIHRoaXMgc2ltcGxpZmljYXRpb24gdmVyeSBt
dWNoLCBleGNlcHQgdGhpcyBwYXJ0Ogo+Pgo+Pj4gKwlpZiAocmV0KSB7Cj4+PiArCQlwcl9kZWJ1
Zygia2VybmVsIHNpZ25hdHVyZSB2ZXJpZmljYXRpb24gZmFpbGVkICglZCkuXG4iLCByZXQpOwo+
Pgo+PiAuLi4KPj4KPj4+IC0JCXByX25vdGljZSgia2VybmVsIHNpZ25hdHVyZSB2ZXJpZmljYXRp
b24gZmFpbGVkICglZCkuXG4iLCByZXQpOwo+Pgo+PiBJIHRoaW5rIHRoZSBsb2cgbGV2ZWwgc2hv
dWxkIHN0YXkgYXQgbW9zdCBQUl9OT1RJQ0Ugd2hlbiB0aGUKPj4gdmVyaWZpY2F0aW9uIGZhaWx1
cmUgcmVzdWx0cyBpbiByZWplY3RpbmcgdGhlIGtlcm5lbC4gUGVyaGFwcwo+PiBldmVuIGxvd2Vy
Lgo+Pgo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIGNvbW1lbnQsIEppcmkgQm9oYWMuCj4gCj4gSSBs
aWtlIHRoZSBpZGVhIG9mIHN0YXlpbmcgYXQgbW9zdCBQUl9OT1RJQ0UsIGJ1dCB0aGUgcHJfbm90
aWNlKCkgd2lsbCBvdXRwdXQKPiBzb21lIG1lc3NhZ2VzIHRoYXQga2VybmVsIGNvdWxkIHdhbnQg
dG8gaWdub3JlLCBzdWNoIGFzIHRoZSBjYXNlIHlvdSBtZW50aW9uZWQKPiBiZWxvdy4KPiAKPj4g
SW4gY2FzZSB2ZXJpZmljYXRpb24gaXMgbm90IGVuZm9yY2VkIGFuZCB0aGUgZmFpbHVyZSBpcwo+
PiBpZ25vcmVkLCBLRVJOX0RFQlVHIHNlZW1zIHJlYXNvbmFibGUuCj4+Cj4gCj4gWWVzLCBnb29k
IHVuZGVyc3RhbmRpbmcuIEl0IHNlZW1zIHRoYXQgdGhlIHByX2RlYnVnKCkgaXMgc3RpbGwgYSBn
b29kIG9wdGlvbiBoZXJlPwo+IEFueSBvdGhlciB0aG91Z2h0cz8KPiAKCk9yIHRoZSBmb2xsb3dp
bmcgY2hhbmdlIGxvb2tzIGJldHRlcj8gV2hhdCdzIHlvdXIgb3Bpbmlvbj8KCnN0YXRpYyBpbnQK
a2ltYWdlX3ZhbGlkYXRlX3NpZ25hdHVyZShzdHJ1Y3Qga2ltYWdlICppbWFnZSkKewogICAgICAg
IGludCByZXQ7CgogICAgICAgIHJldCA9IGFyY2hfa2V4ZWNfa2VybmVsX3ZlcmlmeV9zaWcoaW1h
Z2UsIGltYWdlLT5rZXJuZWxfYnVmLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaW1hZ2UtPmtlcm5lbF9idWZfbGVuKTsKICAgICAgICBpZiAocmV0KSB7CgogICAg
ICAgICAgICAgICAgaWYgKElTX0VOQUJMRUQoQ09ORklHX0tFWEVDX1NJR19GT1JDRSkpIHsKICAg
ICAgICAgICAgICAgICAgICAgICAgcHJfbm90aWNlKCJFbmZvcmNlZCBrZXJuZWwgc2lnbmF0dXJl
IHZlcmlmaWNhdGlvbiBmYWlsZWQgKCVkKS5cbiIsIHJldCk7CiAgICAgICAgICAgICAgICAgICAg
ICAgIHJldHVybiByZXQ7CiAgICAgICAgICAgICAgICB9CgogICAgICAgICAgICAgICAgLyoKICAg
ICAgICAgICAgICAgICAqIElmIElNQSBpcyBndWFyYW50ZWVkIHRvIGFwcHJhaXNlIGEgc2lnbmF0
dXJlIG9uIHRoZSBrZXhlYwogICAgICAgICAgICAgICAgICogaW1hZ2UsIHBlcm1pdCBpdCBldmVu
IGlmIHRoZSBrZXJuZWwgaXMgb3RoZXJ3aXNlIGxvY2tlZAogICAgICAgICAgICAgICAgICogZG93
bi4KICAgICAgICAgICAgICAgICAqLwogICAgICAgICAgICAgICAgaWYgKCFpbWFfYXBwcmFpc2Vf
c2lnbmF0dXJlKFJFQURJTkdfS0VYRUNfSU1BR0UpICYmCiAgICAgICAgICAgICAgICAgICAgc2Vj
dXJpdHlfbG9ja2VkX2Rvd24oTE9DS0RPV05fS0VYRUMpKQogICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gLUVQRVJNOwoKICAgICAgICAgICAgICAgIHByX2RlYnVnKCJrZXJuZWwgc2lnbmF0
dXJlIHZlcmlmaWNhdGlvbiBmYWlsZWQgKCVkKS5cbiIsIHJldCk7CiAgICAgICAgfQoKICAgICAg
ICByZXR1cm4gMDsKfQoKClRoYW5rcy4KTGlhbmJvCgo+IFRoYW5rcy4KPiBMaWFuYm8KPiAKPiAK
Pj4gUmVnYXJkcywKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
