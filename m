Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CBD1FEF1A
	for <lists+kexec@lfdr.de>; Thu, 18 Jun 2020 11:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQiT/X7zy5A5r8oF5Z/aTJpVCIUuw78BUqj+GUOl/os=; b=brAbTOfDnq+/oZ
	vb4sm8XjsYRH9o6CukY5mcmVgJ1qvgoxpsZyKKaJG53jgII+b0Hgdv7MTI83gE4/NhsspvxcwtcNn
	U9DEHaLkv+wkNJ1Ppy0n3+JzPNQeDMnIHBkp42sSBsUxR57askZSrQCoEL7k/fSNmq3Di2PHmT3xG
	C5Wvo23M7kdKQXM9kieRz8AgKskaRYai7aFsWd7lxvbpJAcLDVG6htDujIDUvAWyPX5ZmDTtr4MFO
	qdKXiJd+DKwNtOqdmR5ZWqFJvsiJW69r+Hoa2M+2FCNQ/+AIu+n7EgaaeCPUijeTpvzgcFS1M5nd5
	U9rZJ2ol0+fxIRn6w0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrJc-0001VU-Nd; Thu, 18 Jun 2020 09:58:36 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrJZ-0001Uu-En
 for kexec@lists.infradead.org; Thu, 18 Jun 2020 09:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592474308;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gbqjrwqFXRmxoGwqqNgfEHopA2VshMnaJanmKD0Qpms=;
 b=CEKgvqkR5XyIzJpXWyN5F+UZBEJdEo5hZp3PRHVR4T9C/5zHIONKpRpmmRccu4p5/FvXXh
 u4TOdtO653hNHsqtPNQAx/Z3P+dF1ATEER2D5aDuG25jQKtPeQghhuf6/0OWstLZ1288Wz
 rRXU/xNpCckDqOXMH5AIwcMnQaXz0dQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-378-NeysvbJNM_mOZDG51GPGMg-1; Thu, 18 Jun 2020 05:58:26 -0400
X-MC-Unique: NeysvbJNM_mOZDG51GPGMg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC42485DA2C;
 Thu, 18 Jun 2020 09:58:24 +0000 (UTC)
Received: from [10.72.13.252] (ovpn-13-252.pek2.redhat.com [10.72.13.252])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B81211000324;
 Thu, 18 Jun 2020 09:58:17 +0000 (UTC)
Subject: Re: [PATCH v2] kexec: Do not verify the signature without the
 lockdown or mandatory signature
To: Andrew Morton <akpm@linux-foundation.org>
References: <20200602045952.27487-1-lijiang@redhat.com>
 <20200617123731.0dbb039a053a2ef610af59fb@linux-foundation.org>
From: lijiang <lijiang@redhat.com>
Message-ID: <d10e6b33-e41f-f3be-4aaa-8ffa22a1cc29@redhat.com>
Date: Thu, 18 Jun 2020 17:58:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200617123731.0dbb039a053a2ef610af59fb@linux-foundation.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_025833_580042_C3D2F6A4 
X-CRM114-Status: GOOD (  28.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jbohac@suse.cz, bhe@redhat.com, kexec@lists.infradead.org,
 jmorris@namei.org, mjg59@google.com, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMjDlubQwNuaciDE45pelIDAzOjM3LCBBbmRyZXcgTW9ydG9uIOWGmemBkzoKPiBPbiBU
dWUsICAyIEp1biAyMDIwIDEyOjU5OjUyICswODAwIExpYW5ibyBKaWFuZyA8bGlqaWFuZ0ByZWRo
YXQuY29tPiB3cm90ZToKPiAKPj4gU2lnbmF0dXJlIHZlcmlmaWNhdGlvbiBpcyBhbiBpbXBvcnRh
bnQgc2VjdXJpdHkgZmVhdHVyZSwgdG8gcHJvdGVjdAo+PiBzeXN0ZW0gZnJvbSBiZWluZyBhdHRh
Y2tlZCB3aXRoIGEga2VybmVsIG9mIHVua25vd24gb3JpZ2luLiBLZXhlYwo+PiByZWJvb3Rpbmcg
aXMgYSB3YXkgdG8gcmVwbGFjZSB0aGUgcnVubmluZyBrZXJuZWwsIGhlbmNlIG5lZWQgYmUKPj4g
c2VjdXJlZCBjYXJlZnVsbHkuCj4gCj4gSSdtIGZpbmRpbmcgdGhpcyBjaGFuZ2Vsb2cgcXVpdGUg
aGFyZCB0byB1bmRlcnN0YW5kLAo+IApUaGFua3MgZm9yIHlvdXIgY29tbWVudC4KCkkgd2lsbCBp
bXByb3ZlIHRoZSBwYXRjaCBsb2cgYW5kIHRyeSB0byBtYWtlIGl0IGVhc2lseSB1bmRlcnN0YW5k
LgoKPj4gSW4gdGhlIGN1cnJlbnQgY29kZSBvZiBoYW5kbGluZyBzaWduYXR1cmUgdmVyaWZpY2F0
aW9uIG9mIGtleGVjIGtlcm5lbCwKPj4gdGhlIGxvZ2ljIGlzIHZlcnkgdHdpc3RlZC4gSXQgbWl4
ZXMgc2lnbmF0dXJlIHZlcmlmaWNhdGlvbiwgSU1BIHNpZ25hdHVyZQo+PiBhcHByYWlzaW5nIGFu
ZCBrZXhlYyBsb2NrZG93bi4KPj4KPj4gSWYgdGhlcmUgaXMgbm8gS0VYRUNfU0lHX0ZPUkNFLCBr
ZXhlYyBrZXJuZWwgaW1hZ2UgZG9lc24ndCBoYXZlIG9uZSBvZgo+PiBzaWduYXR1cmUsIHRoZSBz
dXBwb3J0ZWQgY3J5cHRvLCBhbmQga2V5LCB3ZSBkb24ndCB0aGluayB0aGlzIGlzIHdyb25nLAo+
IAo+IEkgdGhpbmsgdGhpcyBpcyBzYXlpbmcgdGhhdCBpbiB0aGUgYWJzZW5jZSBvZiBLRVhFQ19T
SUdfRk9SQ0UgYW5kIGlmCj4gdGhlIHNpZ25hdHVyZS9jcnlwdG8va2V5IGFyZSBhbGwgaW5jb3Jy
ZWN0LCB0aGUga2V4ZWMgc3RpbGwgc3VjY2VlZHMsCj4gYnV0IGl0IHNob3VsZCBub3QuCj4gCldo
ZW4gdGhlIEtFWEVDX1NJR19GT1JDRSBpcyBub3QgZW5hYmxlZCwgZXZlbiBpZiBrZXhlYyBrZXJu
ZWwgaW1hZ2UgZG9lc24ndApoYXZlIHRoZSBzaWduYXR1cmUsIG9yIHRoZSBrZXksIGV0Yywga2V4
ZWMgc2hvdWxkIGJlIHN0aWxsIGFsbG93ZWQgdG8gbG9hZGVkLAp1bmxlc3Mga2V4ZWMgbG9ja2Rv
d24gaXMgZXhlY3V0ZWQuCgo+PiBVbmxlc3Mga2V4ZWMgbG9ja2Rvd24gaXMgZXhlY3V0ZWQuIElN
QSBpcyBjb25zaWRlcmVkIGFzIGFub3RoZXIga2luZCBvZgo+PiBzaWduYXR1cmUgYXBwcmFpc2lu
ZyBtZXRob2QuCj4+Cj4+IElmIGtleGVjIGtlcm5lbCBpbWFnZSBoYXMgc2lnbmF0dXJlL2NyeXB0
by9rZXksIGl0IGhhcyB0byBnbyB0aHJvdWdoIHRoZQo+PiBzaWduYXR1cmUgdmVyaWZpY2F0aW9u
IGFuZCBwYXNzLiBPdGhlcndpc2UgaXQncyBzZWVuIGFzIHZlcmlmaWNhdGlvbgo+PiBmYWlsdXJl
LCBhbmQgd29uJ3QgYmUgbG9hZGVkLgo+IAo+IEkgZG9uJ3Qga25vdyBpZiB0aGlzIGlzIGRlc2Ny
aWJpbmcgdGhlIGN1cnJlbnQgc2l0dWF0aW9uIG9yIHRoZQo+IHBvc3QtcGF0Y2ggc2l0dWF0aW9u
Lgo+IApUaGlzIGlzIHRoZSBjdXJyZW50IHNpdHVhdGlvbiwgYW5kIHdlJ2QgbGlrZSB0byBjaGFu
Z2UgaXQgc28gdGhhdCBrZXhlYyBhbGxvd3MKdGhlIGtlcm5lbCBhbmQgaW5pdHJkIGltYWdlcyB0
byBiZSBsb2FkZWQgd2hlbiB0aGV5IGFyZSBub3QgdGhlIGxvY2tkb3duIG9yIAptYW5kYXRvcnkg
c2lnbmF0dXJlLgoKPj4gU2VlbXMga2V4ZWMga2VybmVsIGltYWdlIHdpdGggYW4gdW5xdWFsaWZp
ZWQgc2lnbmF0dXJlIGlzIGV2ZW4gd29yc2UgdGhhbgo+PiB0aG9zZSB3L28gc2lnbmF0dXJlIGF0
IGFsbCwgdGhpcyBzb3VuZHMgdmVyeSB1bnJlYXNvbmFibGUuIEUuZy4gSWYgcGVvcGxlCj4+IGdl
dCBhIHVuc2lnbmVkIGtlcm5lbCB0byBsb2FkLCBvciBhIGtlcm5lbCBzaWduZWQgd2l0aCBleHBp
cmVkIGtleSwgd2hpY2gKPj4gb25lIGlzIG1vcmUgZGFuZ2Vyb3VzPwo+Pgo+PiBTbywgaGVyZSwg
bGV0J3Mgc2ltcGxpZnkgdGhlIGxvZ2ljIHRvIGltcHJvdmUgY29kZSByZWFkYWJpbGl0eS4gSWYg
dGhlCj4+IEtFWEVDX1NJR19GT1JDRSBlbmFibGVkIG9yIGtleGVjIGxvY2tkb3duIGVuYWJsZWQs
IHNpZ25hdHVyZSB2ZXJpZmljYXRpb24KPj4gaXMgbWFuZGF0ZWQuIE90aGVyd2lzZSwgd2UgbGlm
dCB0aGUgYmFyIGZvciBhbnkga2VybmVsIGltYWdlLgo+IAo+IEkgdGhpbmsgdGhlIHdob2xlIHRo
aW5nIG5lZWRzIGEgcmV3cml0ZS4gIFN0YXJ0IG91dCBieSBmdWxseSBkZXNjcmliaW5nCj4gdGhl
IGN1cnJlbnQgc2l0dWF0aW9uLiAgVEhlbiBkZXNjcmliZSB3aGF0IGlzIHdyb25nIHdpdGggaXQs
IGFuZCB3aHkuIAo+IFRoZW4gZGVzY3JpYmUgdGhlIHByb3Bvc2VkIGNoYW5nZS4gIE9yIHNvbWV0
aGluZyBhbG9uZyB0aGVzZSBsaW5lcy4KPiAKPiBUaGUgY2hhbmdlbG9nIHNob3VsZCBhbHNvIG1h
a2UgY2xlYXIgdGhlIGVuZC11c2VyIGltcGFjdCBvZiB0aGUgcGF0Y2guIAo+IEluIHN1ZmZpY2ll
bnQgZGV0YWlsIGZvciBvdGhlcnMgdG8gZGVjaWRlIHdoaWNoIGtlcm5lbCB2ZXJzaW9uKHMpCj4g
c2hvdWxkIGJlIHBhdGNoZWQuICBZb3VyIHJlY29tbWVuZGF0aW9ucyB3aWxsIGFsc28gYmUgdmFs
dWFibGUgLSB3aGljaAo+IGtlcm5lbCB2ZXJzaW9uKHMpIGRvIHlvdSB0aGluayBzaG91bGQgYmUg
cGF0Y2hlZCwgYW5kIHdoeT8KPiAKCkN1cnJlbnRseSwga2VybmVsIHdpbGwgYWx3YXlzIHZlcmlm
eSB0aGUgc2lnbmF0dXJlIHdpdGhvdXQgdGhlIGxvY2tkb3duIG9yCm1hbmRhdG9yeSBzaWduYXR1
cmUuIFRoaXMgbWF5IHByZXZlbnQgdGhlIGtlcm5lbCBmcm9tIGxvYWRpbmcgdGhlIGtlcm5lbCBh
bmQKaW5pdHJkIGltYWdlcyB2aWEgdGhlIGtleGVjX2ZpbGVfbG9hZCgpIHN5c2NhbGwuIEhvd2V2
ZXIsIHdlJ2QgbGlrZSB0byBhbGxvdwp0byBzdGlsbCBsb2FkIHRoZSBpbWFnZXMgaW4gc3VjaCBj
YXNlIHJhdGhlciB0aGFuIGZhaWx1cmUgZHVlIHRvIHRoZSBzaWduYXR1cmUKdmVyaWZpY2F0aW9u
IGlzc3VlLgoKRm9yIGV4YW1wbGUsIGF0IHRoZSBzdGFnZSBvZiBkZXZlbG9wbWVudCBhbmQgdGVz
dCwgdXN1YWxseSB1c2UgYSBzaWduYXR1cmUKa2V5IHRvIHRlc3Qgd2hldGhlciB0aGUgcHJvY2Vk
dXJlIG9mIHNpZ25hdHVyZSBjYW4gd29yayB3ZWxsIGFzIGV4cGVjdGVkLgpTb21ldGltZXMsIHRo
ZSBzaWduaW5nIHRpbWUgbWF5IGJlIGV4cGlyZWQsIGJ1dCBzdGlsbCB1c2UgdGhlIGtlcm5lbCB3
aXRoCnRoZSBvbGQgc2lnbmF0dXJlIGtleSB0byByZXByb2R1Y2Ugc29tZSBwcm9ibGVtcyBpbiBz
b21lIGF1dG9tYXRpYyB0ZXN0cywKd2hpY2ggYWx3YXlzIGNhdXNlZCB0aGUgZmFpbHVyZSBvZiBs
b2FkaW5nIGltYWdlcy4KCkxldCdzIGNsZWFuIHRoZSBsb2dpYyBvZiBrZXJuZWwgY29kZSBhbmQg
YWxsb3cgdG8gc3RpbGwgbG9hZCB0aGUga2VybmVsIGFuZAppbml0cmQgaW1hZ2VzIHdpdGhvdXQg
dGhlIGxvY2tkb3duIG9yIG1hbmRhdG9yeSBzaWduYXR1cmUuCgoKSG9wZSB0aGlzIGhlbHBzLgoK
VGhhbmtzLgpMaWFuYm8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
