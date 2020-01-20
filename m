Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A554C1427B6
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 10:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cka1vHl7zu//3x2fE0GdHev7gY8AsAVJ3gwwogedZ1Y=; b=SWI6r7y3cgl5tL
	/tb0xxLWU604rmy+jhYQwkW91Ia4x69AajFZwZgCMWP2E48WgBIC84G/rK9BAF0NygsMsGuwRx57p
	uXfYUDMk/oOS61eu4wy0DPRuY5h+DwxoexkX4kdeJxujVBs9Ptgr4ZBwPZXZjmizjE9d63StolrAW
	ki8Ik69H9BWgtAkMsoefnuh2yc7Vi6o7KpKvNO+JCzic0+gQ1xOiCg7/c+P2Xr336l1QkxbsA1o6Z
	tpUxhju5gXLTo0dTnncet+72nRig9Dua0x+D28Wl9DD4x9veg+jTmasyxREYect2/VJobRcQPLTpf
	mal3kold1P2o4Z6RPUNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itTog-0003Qp-NR; Mon, 20 Jan 2020 09:57:54 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itToa-0003PU-NQ
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 09:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579514267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4ZRp/6s8Fi66MQD4Ah0vRGhKPWTEfm8SYR00u1NXuTo=;
 b=NC8nBvzuVOCfYAyI04L4HMHcDd1F7/sdsTmuw5wzYxZpkK1V9ie/OtUcXFWboO+TYtaTml
 AOlyqqboSgmryVuZR4jEu/4Drpa6u2aQ/xIQ9LZ1px12zViJTSsID1hFtBdPo+QCYHIiic
 StfAdwsFTpMrqkQrrWydHvZm3XjK32A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-5xISPXr9OAeRt-UVjW12JA-1; Mon, 20 Jan 2020 04:57:43 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28C0818CA240;
 Mon, 20 Jan 2020 09:57:42 +0000 (UTC)
Received: from [10.72.8.22] (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 10EB1860E7;
 Mon, 20 Jan 2020 09:57:34 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
To: Baoquan He <bhe@redhat.com>, David Hildenbrand <david@redhat.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
Date: Mon, 20 Jan 2020 17:57:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200120085919.GB16539@MiWiFi-R3L-srv>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 5xISPXr9OAeRt-UVjW12JA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_015748_836682_F1C40BC1 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cascardo@canonical.com, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 kexec@lists.infradead.org, Michal Hocko <mhocko@kernel.org>,
 Qian Cai <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpPbiAwMS8yMC8yMDIwIDA0OjU5IFBNLCBCYW9xdWFuIEhlIHdyb3RlOgo+IE9uIDAxLzIwLzIw
IGF0IDA5OjMzYW0sIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOgo+Pgo+Pgo+Pj4gQW0gMjAuMDEu
MjAyMCB1bSAwMzoyNSBzY2hyaWViIFBpbmdmYW4gTGl1IDxwaWxpdUByZWRoYXQuY29tPjoKPj4+
Cj4+PiDvu79BZnRlciBrZXJuZWwgY29tbWl0IGJhNzJiNGM4Y2Y2MCAoIm1tL3NwYXJzZW1lbTog
c3VwcG9ydCBzdWItc2VjdGlvbgo+Pj4gaG90cGx1ZyIpLCB3aGVuIGhvdC1yZW1vdmVkLCBzZWN0
aW9uX21lbV9tYXAgaXMgc3RpbGwgZW5jb2RlZCB3aXRoIHNlY3Rpb24KPj4+IHN0YXJ0IHBmbiwg
bm90IE5VTEwuIFRoaXMgYnJlYWsgdGhlIGN1cnJlbnQgbWFrZWR1bXBmaWxlLgo+Pj4KPj4+IFdo
YXRldmVyIHNlY3Rpb25fbWVtX21hcCBjb2RpbmcgaW5mbyBhZnRlciBob3QtcmVtb3ZlZCwgaXQg
aXMgcmVsaWFibGUKPj4+IGp1c3QgdG8gd29yayBvbiBTRUNUSU9OX01BUktFRF9QUkVTRU5UIGJp
dC4gRml4aW5nIG1ha2VkdW1wZmlsZSBieSB0aGlzCj4+PiB3YXkuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogUGluZ2ZhbiBMaXUgPHBpbGl1QHJlZGhhdC5jb20+Cj4+PiBUbzoga2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+Pj4gQ2M6IEthenVoaXRvIEhhZ2lvIDxrLWhhZ2lvQGFiLmpwLm5lYy5j
b20+Cj4+PiBDYzogQmFvcXVhbiBIZSA8YmhlQHJlZGhhdC5jb20+Cj4+PiBDYzogRGF2aWQgSGls
ZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+Cj4+PiBDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBs
aW51eC1mb3VuZGF0aW9uLm9yZz4KPj4+IENjOiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxpYW1z
QGludGVsLmNvbT4KPj4+IENjOiBPc2NhciBTYWx2YWRvciA8b3NhbHZhZG9yQHN1c2UuZGU+Cj4+
PiBDYzogTWljaGFsIEhvY2tvIDxtaG9ja29Aa2VybmVsLm9yZz4KPj4+IENjOiBRaWFuIENhaSA8
Y2FpQGxjYS5wdz4KPj4+IC0tLQo+Pj4gbWFrZWR1bXBmaWxlLmMgfCA2ICstLS0tLQo+Pj4gMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYg
LS1naXQgYS9tYWtlZHVtcGZpbGUuYyBiL21ha2VkdW1wZmlsZS5jCj4+PiBpbmRleCBlMjkwZmJk
Li5hYjQwYTU4IDEwMDY0NAo+Pj4gLS0tIGEvbWFrZWR1bXBmaWxlLmMKPj4+ICsrKyBiL21ha2Vk
dW1wZmlsZS5jCj4+PiBAQCAtMzQwNiw4ICszNDA2LDYgQEAgc2VjdGlvbl9tZW1fbWFwX2FkZHIo
dW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nICptYXBfbWFzaykKPj4+ICAgIG1hcCA9
IFVMT05HKG1lbV9zZWN0aW9uICsgT0ZGU0VUKG1lbV9zZWN0aW9uLnNlY3Rpb25fbWVtX21hcCkp
Owo+Pj4gICAgbWFzayA9IFNFQ1RJT05fTUFQX01BU0s7Cj4+PiAgICAqbWFwX21hc2sgPSBtYXAg
JiB+bWFzazsKPj4+IC0gICAgaWYgKG1hcCA9PSAweDApCj4+PiAtICAgICAgICAqbWFwX21hc2sg
fD0gU0VDVElPTl9NQVJLRURfUFJFU0VOVDsKVGhpcyBzaG91bGQgYmUgYSB0cmljayB0byBsZXQg
bWFwPT0weDAgc3Vydml2ZSB0aGUgbG9naWMKCQkJaWYgKCEobWFwX21hc2sgJiBTRUNUSU9OX01B
UktFRF9QUkVTRU5UKSkgewoJCQkJcmV0dXJuIEZBTFNFOwoJCQl9CmluIHZhbGlkYXRlX21lbV9z
ZWN0aW9uKCkuCj4+Cj4+IFdoeSB3YXMgdGhhdCBhZGRlZCBpbiB0aGUgZmlyc3QgcGxhY2U/IFRo
aXMgbG9va3MgbGlrZSBkb21lIGNvbXBhdCBoYW5kbGluZyB0byBtZS4gQXJlIHdlIHN1cmUgd2Ug
Y2FuIHJlbW92ZSBpdD8KVGhlIGxvZ2ljIGludHJvZHVjZWQgYnkgY29tbWl0IDE0ODc2YzQ1YWVm
ICgiW1BBVENIIG1ha2VkdW1wZmlsZV0gaGFuZGxlCm1lbV9zZWN0aW9uIGFzIGVpdGhlciBhIHBv
aW50ZXIgb3IgYW4gYXJyYXkiKQpDb21iaW5pbmcgc2VjdGlvbl9tZW1fbWFwX2FkZHIoKSBhbmQg
dGhlIGZvbGxvd2luZyBsb2dpYyBpbgp2YWxpZGF0ZV9tZW1fc2VjdGlvbigpCmlmIChtZW1fbWFw
ID09IDApIHsKCW1lbV9tYXAgPSBOT1RfTUVNTUFQX0FERFI7Cn0KCkkgcmVhY2hlZCB0aGUgc2Ft
ZSBjb25jbHVzaW9uIGFzIEJhb3F1YW4ncy4KPiAKPiAKPiBUaGUgb3JpZ2luYWwgY29kZSBhc3N1
bWVzIHRoYXQgdGhlcmUgYXJlIG9ubHkgdHdvIGtpbmRzIG9mIG1lbV9zZWN0aW9uLAo+IG9uZSBp
cyBlbXB0eSB2YWx1ZSwgdGhlIHNlY29uZCBpcyBhIHByZXNlbnQgb25lLiBUaGlzIHJlbW92aW5n
IGJlaGF2ZXMKPiB0aGUgc2FtZSBhcyB0aGUgb2xkIGNvZGUsIEkgZG9uJ3Qgc2VlIGEgcHJvYmxl
bSB3aXRoIGl0Lgo+IAo+IEkgdHJpZWQgdG8gdW5kZXJzdGFuZCB0aGUgY29kZSwgYnV0IEkgZG9u
J3Qga25vdyB3aHkgaXQgbmVlZCBjYWxsCj4gdmFsaWRhdGVfbWVtX3NlY3Rpb24oKSB0d2ljZSBh
bmQgY29tcGFyZSB0aGUgcmV0dXJuZWQgdmFsdWUuCkkgdGhpbmsgaXQgY291bGQgYmUgaWYvZWxz
ZSwgbm8gbmVlZCB0byBjYWxsIHR3aWNlLgpDYyBUaGFkZXUgTGltYSBkZSBTb3V6YSBDYXNjYXJk
bywgd2hvIGNvbnRyaWJ1dGVzIHRoZSBvcmlnaW5hbCBjb2RlLCBhbmQKbWF5IGhhdmUgc29tZSBp
ZGVhIGFib3V0IGl0LgoKVGhhbmtzLApQaW5nZmFuCgo+IAo+IAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4ga2V4ZWMgbWFpbGluZyBsaXN0Cj4ga2V4
ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8va2V4ZWMKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
