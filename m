Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4E81E3656
	for <lists+kexec@lfdr.de>; Wed, 27 May 2020 05:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQM8ofGBpUPAlxYxf9+9JsJGVGOEVQhDuvsQ51ob4ig=; b=lXW1tCp3N4+ruw
	p3ZtTQPgsADkkRqyU6wCW/o9qfntMQcM6PvcBXl4H54gFNmWFlKlTi6PJrDp7MuJ08iQJuV6NT/1j
	FsvG7dDMz5kHSZ7yMV3adxOunajIXxOqJ/spfYcJEGBzCWd5j4UTJQf0DRwT9pu0QDEi+1NOH+lI9
	pWoWxX2o0RVLb2n+Tfg/OEzqU9SwOmD/tLodWeMJ0lG8jiM0Ps0+d3ZTGkHmkDy2RXBAWZdSec9Fr
	jK1tUcamLypRSqECiI+1GqcLLxT8NU7zvf+gPys9XG+aBLCYv/tTzTMUxuXQycjF49WscNSDXX2Hk
	JgQKlNGUBopFe0/XQA3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmY6-0001xA-DD; Wed, 27 May 2020 03:16:10 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmY3-0001wL-9p
 for kexec@lists.infradead.org; Wed, 27 May 2020 03:16:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590549364;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D/U30jq60+l+qSoKQaysERZKm3+QDoP2KNzgEBqE3b8=;
 b=O05Q0HMdncPqAo5ZQD7XVR5LYJr8MYBVSPLZ/JMexyBNpYUqwBbrAroywGyzA3aXeHzRBC
 +JtWXIZ0/0c2jdSxWzYDAmVHU+XWif/bkE9YDhFe9VeQ/IkqTxmmZ5hAdpYx0c1s05s7dH
 BYlDlKdJ821gqFNlt0nwUh+kqVry8Qk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-370-kriTgT6fMYigScKrfzBEzQ-1; Tue, 26 May 2020 23:16:01 -0400
X-MC-Unique: kriTgT6fMYigScKrfzBEzQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5331F835B42;
 Wed, 27 May 2020 03:16:00 +0000 (UTC)
Received: from [10.72.12.206] (ovpn-12-206.pek2.redhat.com [10.72.12.206])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C941F5C1B0;
 Wed, 27 May 2020 03:15:53 +0000 (UTC)
Subject: Re: [PATCH] kexec: Do not verify the signature without the lockdown
 or mandatory signature
To: Jiri Bohac <jbohac@suse.cz>
References: <20200525052351.24134-1-lijiang@redhat.com>
 <20200526135935.ffkfulsjf7xrep63@dwarf.suse.cz>
From: lijiang <lijiang@redhat.com>
Message-ID: <07a65a70-3764-f62f-705c-049b8d409316@redhat.com>
Date: Wed, 27 May 2020 11:15:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200526135935.ffkfulsjf7xrep63@dwarf.suse.cz>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_201607_413286_68CD55AF 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

5ZyoIDIwMjDlubQwNeaciDI25pelIDIxOjU5LCBKaXJpIEJvaGFjIOWGmemBkzoKPiBPbiBNb24s
IE1heSAyNSwgMjAyMCBhdCAwMToyMzo1MVBNICswODAwLCBMaWFuYm8gSmlhbmcgd3JvdGU6Cj4+
IFNvLCBoZXJlLCBsZXQncyBzaW1wbGlmeSB0aGUgbG9naWMgdG8gaW1wcm92ZSBjb2RlIHJlYWRh
YmlsaXR5LiBJZiB0aGUKPj4gS0VYRUNfU0lHX0ZPUkNFIGVuYWJsZWQgb3Iga2V4ZWMgbG9ja2Rv
d24gZW5hYmxlZCwgc2lnbmF0dXJlIHZlcmlmaWNhdGlvbgo+PiBpcyBtYW5kYXRlZC4gT3RoZXJ3
aXNlLCB3ZSBsaWZ0IHRoZSBiYXIgZm9yIGFueSBrZXJuZWwgaW1hZ2UuCj4gCj4gSSBhZ3JlZSBj
b21wbGV0ZWx5OyBpbiBmYWN0IHRoYXQgd2FzIG15IGludGVudGlvbiB3aGVuCj4gaW50cm9kdWNp
bmcgdGhlIGNvZGUsIGJ1dCBJIGdvdCBvdmVycnVsZWQgYWJvdXQgdGhlIHJldHVybiBjb2RlczoK
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMTgwMTE5MTI1NDI1Lmw3Mm1leXljMnF0
cnJpd2VAZHdhcmYuc3VzZS5jei8KPiAKPiBJIGxpa2UgdGhpcyBzaW1wbGlmaWNhdGlvbiB2ZXJ5
IG11Y2gsIGV4Y2VwdCB0aGlzIHBhcnQ6Cj4gCj4+ICsJaWYgKHJldCkgewo+PiArCQlwcl9kZWJ1
Zygia2VybmVsIHNpZ25hdHVyZSB2ZXJpZmljYXRpb24gZmFpbGVkICglZCkuXG4iLCByZXQpOwo+
IAo+IC4uLgo+IAo+PiAtCQlwcl9ub3RpY2UoImtlcm5lbCBzaWduYXR1cmUgdmVyaWZpY2F0aW9u
IGZhaWxlZCAoJWQpLlxuIiwgcmV0KTsKPiAKPiBJIHRoaW5rIHRoZSBsb2cgbGV2ZWwgc2hvdWxk
IHN0YXkgYXQgbW9zdCBQUl9OT1RJQ0Ugd2hlbiB0aGUKPiB2ZXJpZmljYXRpb24gZmFpbHVyZSBy
ZXN1bHRzIGluIHJlamVjdGluZyB0aGUga2VybmVsLiBQZXJoYXBzCj4gZXZlbiBsb3dlci4KPiAK
ClRoYW5rIHlvdSBmb3IgdGhlIGNvbW1lbnQsIEppcmkgQm9oYWMuCgpJIGxpa2UgdGhlIGlkZWEg
b2Ygc3RheWluZyBhdCBtb3N0IFBSX05PVElDRSwgYnV0IHRoZSBwcl9ub3RpY2UoKSB3aWxsIG91
dHB1dApzb21lIG1lc3NhZ2VzIHRoYXQga2VybmVsIGNvdWxkIHdhbnQgdG8gaWdub3JlLCBzdWNo
IGFzIHRoZSBjYXNlIHlvdSBtZW50aW9uZWQKYmVsb3cuCgo+IEluIGNhc2UgdmVyaWZpY2F0aW9u
IGlzIG5vdCBlbmZvcmNlZCBhbmQgdGhlIGZhaWx1cmUgaXMKPiBpZ25vcmVkLCBLRVJOX0RFQlVH
IHNlZW1zIHJlYXNvbmFibGUuCj4gCgpZZXMsIGdvb2QgdW5kZXJzdGFuZGluZy4gSXQgc2VlbXMg
dGhhdCB0aGUgcHJfZGVidWcoKSBpcyBzdGlsbCBhIGdvb2Qgb3B0aW9uIGhlcmU/CkFueSBvdGhl
ciB0aG91Z2h0cz8KClRoYW5rcy4KTGlhbmJvCgoKPiBSZWdhcmRzLAo+IAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdApr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8va2V4ZWMK
