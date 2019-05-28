Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949852C01A
	for <lists+kexec@lfdr.de>; Tue, 28 May 2019 09:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLr87rp1T/uBWd2riu8BbAdYC5cW3XwG/Iwy16olNws=; b=KWdlDC5gAC2euP
	iGLCJnhgX9r4idmopzd7nneXM9uNC8wBpo4pcJCK2T0P546fwNUcFm6iQW+zCaHU0JAhMjmhNB9/l
	bDEX1SqD7It+M0rsom+Iv8bkDnFKTcA5EzoI4Wvw/G3GQyLEipKGcJLu8ptDd8d0INTTwAC7/DQiF
	yoIKtcJf66KI1Lfp9lLW1Wea3A4hc2NrumV8r/eEYE1jXY9Vv1fKzjMbR57neeucblqfc2x/eoZyD
	ENFL9REm7OLw1GxL9aFm5JWw3tEheY0fEwd0pqQYA5qj+x4u8lo+jnOrXg/xXYh2WGHs26/f3NC1p
	DalpZjznaznD+OYw9r3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWZI-0002xr-QI; Tue, 28 May 2019 07:30:44 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWZF-0002vr-0h
 for kexec@lists.infradead.org; Tue, 28 May 2019 07:30:42 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0A82E3087939;
 Tue, 28 May 2019 07:30:37 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-83.pek2.redhat.com [10.72.12.83])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D3855D71C;
 Tue, 28 May 2019 07:30:25 +0000 (UTC)
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel e820
 table
From: lijiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
References: <20190423013007.17838-1-lijiang@redhat.com>
Message-ID: <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
Date: Tue, 28 May 2019 15:30:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190423013007.17838-1-lijiang@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 28 May 2019 07:30:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_003041_095381_5EC715A7 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, bhe@redhat.com,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 mingo@redhat.com, bp@alien8.de, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGksIEJvcmlzIGFuZCBUaG9tYXMKCkNvdWxkIHlvdSBnaXZlIG1lIGFueSBzdWdnZXN0aW9ucyBh
Ym91dCB0aGlzIHBhdGNoIHNlcmllcz8gT3RoZXIgcmV2aWV3ZXJzPwoKVGhhbmtzLgpMaWFuYm8K
CuWcqCAyMDE55bm0MDTmnIgyM+aXpSAwOTozMCwgTGlhbmJvIEppYW5nIOWGmemBkzoKPiBUaGlz
IHBhdGNoc2V0IGRpZCB0aHJlZSB0aGluZ3M6Cj4gCj4gYSkuIHg4Ni9lODIwLCByZXNvdXJjZTog
YWRkIGEgbmV3IEkvTyByZXNvdXJjZSBkZXNjcmlwdG9yICdJT1JFU19ERVNDXwo+ICAgICBSRVNF
UlZFRCcKPiAKPiBiKS4geDg2L21tOiBjaGFuZ2UgdGhlIGNoZWNrIGNvbmRpdGlvbiBpbiBTRVYg
YmVjYXVzZSBhIG5ldyBkZXNjcmlwdG9yIGlzCj4gICAgIGludHJvZHVjZWQKPiAKPiBjKS4geDg2
L2tleGVjX2ZpbGU6IGFkZCByZXNlcnZlZCBlODIwIHJhbmdlcyB0byBrZHVtcCBrZXJuZWwgZTgy
MCB0YWJsZQo+IAo+IENoYW5nZXMgc2luY2UgdjE6Cj4gMS4gTW9kaWZpZWQgdGhlIHZhbHVlIG9m
IGZsYWdzIHRvICIwIiwgd2hlbiB3YWxraW5nIHRocm91Z2ggdGhlIHdob2xlCj4gdHJlZSBmb3Ig
ZTgyMCByZXNlcnZlZCByYW5nZXMuCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MjoKPiAxLiBNb2RpZmll
ZCB0aGUgdmFsdWUgb2YgZmxhZ3MgdG8gIjAiLCB3aGVuIHdhbGtpbmcgdGhyb3VnaCB0aGUgd2hv
bGUKPiB0cmVlIGZvciBlODIwIHJlc2VydmVkIHJhbmdlcy4KPiAyLiBNb2RpZmllZCB0aGUgaW52
YWxpZCBTT0IgY2hhaW4gaXNzdWUuCj4gCj4gQ2hhbmdlcyBzaW5jZSB2MzoKPiAxLiBEcm9wcGVk
IFtQQVRDSCAxLzMgdjNdIHJlc291cmNlOiBmaXggYW4gZXJyb3Igd2hpY2ggd2Fsa3MgdGhyb3Vn
aCBpb21lbQo+ICAgIHJlc291cmNlcy4gUGxlYXNlIHJlZmVyIHRvIHRoaXMgY29tbWl0IDwwMTBh
OTNiZjk3Yzc+ICJyZXNvdXJjZTogRml4Cj4gICAgZmluZF9uZXh0X2lvbWVtX3JlcygpIGl0ZXJh
dGlvbiBpc3N1ZSIKPiAKPiBDaGFuZ2VzIHNpbmNlIHY0Ogo+IDEuIEltcHJvdmUgdGhlIHBhdGNo
IGxvZywgYW5kIGFkZCBrZXJuZWwgbG9nLgo+IAo+IENoYW5nZXMgc2luY2UgdjU6Cj4gMS4gUmV3
cml0ZSB0aGVzZSBwYXRjaGVzIGxvZy4KPiAKPiBDaGFuZ2VzIHNpbmNlIHY2Ogo+IDEuIE1vZGlm
eSB0aGUgW1BBVENIIDEvMl0sIGFuZCBhZGQgdGhlIG5ldyBJL08gcmVzb3VyY2UgZGVzY3JpcHRv
cgo+ICAgICdJT1JFU19ERVNDX1JFU0VSVkVEJyBmb3IgdGhlIGlvbWVtIHJlc291cmNlcyBzZWFy
Y2ggaW50ZXJmYWNlcywKPiAgICBhbmQgYWxzbyB1cGRhdGVzIHRoZXNlIGNvZGVzIHJlbGF0ZXMg
dG8gJ0lPUkVTX0RFU0NfTk9ORScuCj4gMi4gTW9kaWZ5IHRoZSBbUEFUQ0ggMi8yXSwgYW5kIHdh
bGsgdGhyb3VnaCBpbyByZXNvdXJjZSBiYXNlZCBvbiB0aGUKPiAgICBuZXcgZGVzY3JpcHRvciAn
SU9SRVNfREVTQ19SRVNFUlZFRCcuCj4gMy4gVXBkYXRlIHBhdGNoIGxvZy4KPiAKPiBDaGFuZ2Vz
IHNpbmNlIHY3Ogo+IDEuIEltcHJvdmUgcGF0Y2ggbG9nLgo+IDIuIEltcHJvdmUgdGhpcyBmdW5j
dGlvbiBfX2lvcmVtYXBfY2hlY2tfZGVzY19vdGhlcigpLgo+IDMuIE1vZGlmeSBjb2RlIGNvbW1l
bnQgaW4gdGhlIF9faW9yZW1hcF9jaGVja19kZXNjX290aGVyKCkKPiAKPiBDaGFuZ2VzIHNpbmNl
IHY4Ogo+IDEuIEdldCByaWQgb2YgYWxsIGNoYW5nZXMgYWJvdXQgaWE2NC4oQm9yaXNsYXYncyBz
dWdnZXN0aW9uKQo+IDIuIENoYW5nZSB0aGUgZXhhbWluYXRpb24gY29uZGl0aW9uIHRvIHRoZSAn
SU9SRVNfREVTQ19BQ1BJXyonLgo+IDMuIE1vZGlmeSB0aGUgc2lnbmF0dXJlLiBUaGlzIHBhdGNo
KGFkZCB0aGUgbmV3IEkvTyByZXNvdXJjZQo+ICAgIGRlc2NyaXB0b3IgJ0lPUkVTX0RFU0NfUkVT
RVJWRUQnKSB3YXMgc3VnZ2VzdGVkIGJ5IEJvcmlzLgo+IAo+IENoYW5nZXMgc2luY2Ugdjk6Cj4g
MS4gSW1wcm92ZSBwYXRjaCBsb2cuCj4gMi4gTm8gbmVlZCB0byBtb2RpZnkgdGhlIGtlcm5lbC9y
ZXNvdXJjZS5jLCBzbyBjb3JyZWN0IHRoZW0uCj4gMy4gQ2hhbmdlIHRoZSBuYW1lIG9mIHRoZSBf
X2lvcmVtYXBfY2hlY2tfZGVzY19vdGhlcigpIHRvCj4gICAgX19pb3JlbWFwX2NoZWNrX2Rlc2Nf
bm9uZV9hbmRfcmVzZXJ2ZWQoKSwgYW5kIG1vZGlmeSB0aGUKPiAgICBjaGVjayBjb25kaXRpb24s
IGFkZCBjb21tZW50IGFib3ZlIGl0Lgo+IAo+IENoYW5nZXMgc2luY2UgdjEwOgo+IDEuIFNwbGl0
IHRoZW0gaW50byB0aHJlZSBwYXRjaGVzLCB0aGUgc2Vjb25kIHBhdGNoIGlzIGN1cnJlbnRseSBh
ZGRlZC4KPiAyLiBDaGFuZ2Ugc3RydWN0IGlvcmVtYXBfbWVtX2ZsYWdzIHRvIHN0cnVjdCBpb3Jl
bWFwX2Rlc2MgYW5kIHJlZGVmaW5lCj4gaXQuCj4gMy4gQ2hhbmdlIHRoZSBuYW1lIG9mIHRoZSBf
X2lvcmVtYXBfY2hlY2tfZGVzY19vdGhlcigpIHRvCj4gX19pb3JlbWFwX2NoZWNrX2Rlc2MoKS4K
PiA0LiBDaGFuZ2UgdGhlIGNoZWNrIGNvbmRpdGlvbiBpbiBTRVYgYW5kIGFsc28gaW1wcm92ZSB0
aGVtLgo+IDUuIE1vZGlmeSB0aGUgcmV0dXJuIHZhbHVlIGZvciBzb21lIGZ1bmN0aW9ucy4KPiAK
PiBMaWFuYm8gSmlhbmcgKDMpOgo+ICAgeDg2L2U4MjAsIHJlc291cmNlOiBhZGQgYSBuZXcgSS9P
IHJlc291cmNlIGRlc2NyaXB0b3IKPiAgICAgJ0lPUkVTX0RFU0NfUkVTRVJWRUQnCj4gICB4ODYv
bW06IGNoYW5nZSB0aGUgY2hlY2sgY29uZGl0aW9uIGluIFNFViBiZWNhdXNlIGEgbmV3IGRlc2Ny
aXB0b3IgaXMKPiAgICAgaW50cm9kdWNlZAo+ICAgeDg2L2tleGVjX2ZpbGU6IGFkZCByZXNlcnZl
ZCBlODIwIHJhbmdlcyB0byBrZHVtcCBrZXJuZWwgZTgyMCB0YWJsZQo+IAo+ICBhcmNoL3g4Ni9r
ZXJuZWwvY3Jhc2guYyB8ICA2ICsrKysrCj4gIGFyY2gveDg2L2tlcm5lbC9lODIwLmMgIHwgIDIg
Ky0KPiAgYXJjaC94ODYvbW0vaW9yZW1hcC5jICAgfCA1OSArKysrKysrKysrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L2lvcG9ydC5oICB8IDEwICsrKysr
KysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVj
IG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
