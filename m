Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670DAEBE54
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 08:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qo75plekdmZQuFwcr890gm4Yk7c2CgnAQTuieUYBc4=; b=BMA4vyFaXXFht7
	rpnYDtEZiaaT3oIGme9hxxxXaqSL+X0tH6sqfGQFxdV3j1QEl+OQ6Rhm2smhT5cfvVdETfLXqFamJ
	z5BTGN98WyK9WgWKb1CpgKT2hFyMyJqtgLIlQyPLxm4cYa3nRRb8eAKLemhnOiFNFYEFXditisWhP
	v2RqoHC4ymVmwQuR3bK4o8jsQmc3V+t+/XlLx96jyTU4u5yZrftLD1PwSSVB7P4qS78L8w9r9E8ix
	WJYQJoAv4mVCA84qn4I2acANeLRR5xKUD+CW+KXNs8e142WKMGXNWYQhu2YKZLtL21MFUJ3NIqiel
	17hCIjwu60qdTSJY6DUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQR6q-0004xJ-9n; Fri, 01 Nov 2019 07:12:36 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQR6m-0004wV-LG
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 07:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572592350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G+nexqqAfYOM5G5w8RuN2lq0dI5Anu1jJGXCu8wvspA=;
 b=AKK9DaXXBSK3nQfIikTgPbV4Ju0FD9F6rOAQcXw3bndKXkcnY8MQovSG9NxBRDJMnui319
 6yo0rl7WQRpWP+BgggbfUcxl9c0vE/uNiwLO2emSbmoQDSUv6MvP+yhYEwYBVgXl7Blbjr
 ydibSBsepCe3jpAe58Uflp84ngVomcg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-1JpmMZcAPqqB0LmvV7w9YQ-1; Fri, 01 Nov 2019 03:12:26 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 354BA800D49;
 Fri,  1 Nov 2019 07:12:24 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-90.pek2.redhat.com [10.72.12.90])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A628EF6EE;
 Fri,  1 Nov 2019 07:12:14 +0000 (UTC)
Subject: Re: [PATCH 1/2 RESEND v8] x86/kdump: always reserve the low 1M when
 the crashkernel option is specified
To: Borislav Petkov <bp@alien8.de>
References: <20191031033517.11282-1-lijiang@redhat.com>
 <20191031033517.11282-2-lijiang@redhat.com>
 <20191031071345.GA17248@nazgul.tnic>
 <fe68b796-c483-20c4-623c-2671c52a3bf9@redhat.com>
 <20191031104748.GC21133@nazgul.tnic>
From: lijiang <lijiang@redhat.com>
Message-ID: <2865c4af-5630-9f42-1768-3ad5c90fe6f6@redhat.com>
Date: Fri, 1 Nov 2019 15:12:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191031104748.GC21133@nazgul.tnic>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 1JpmMZcAPqqB0LmvV7w9YQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_001232_824436_AE6F789C 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQxMOaciDMx5pelIDE4OjQ3LCBCb3Jpc2xhdiBQZXRrb3Yg5YaZ6YGTOgo+IE9u
IFRodSwgT2N0IDMxLCAyMDE5IGF0IDA1OjQwOjM1UE0gKzA4MDAsIGxpamlhbmcgd3JvdGU6Cj4+
IE1heWJlIGl0IHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoIHRvIGZpeCB0aGUgb2xkIGNvbXBp
bGUgd2FybmluZ3MgYXMgZm9sbG93Lgo+PiBBbmQgaSBzaG91bGQgcHV0IHRoZSBwYXRjaCBpbnRv
IHRoaXMgc2VyaWVzLgo+IAo+IFllcywgbWF5YmUuCj4gCj4+IGNvbW1pdCBkMjA5MWQxZjRmNjdm
MWMzODI5M2IwZTkzZmRiZmVmYTc2Njk0MGNmIChIRUFEIC0+IG1hc3RlcikKPj4gQXV0aG9yOiBM
aWFuYm8gSmlhbmcgPGxpamlhbmdAcmVkaGF0LmNvbT4KPj4gRGF0ZTogICBUaHUgT2N0IDMxIDE1
OjQ4OjAyIDIwMTkgKzA4MDAKPj4KPj4gICAgIGtleGVjOiBGaXggaTM4NiBidWlsZCB3YXJuaW5n
cyB0aGF0IG1pc3NlZCBkZWNsYXJhdGlvbiBvZiBzdHJ1Y3Qga2ltYWdlCj4+ICAgICAKPj4gICAg
IEtidWlsZCB0ZXN0IHJvYm90IHJlcG9ydGVkIHNvbWUgYnVpbGQgd2FybmluZ3MsIHBsZWFzZSBy
ZWZlciB0byB0aGUKPj4gICAgIExpbmsgYmVsb3cgZm9yIGRldGFpbHMuCj4gCj4gRXhwbGFpbiBo
ZXJlIHdoYXQgdGhlIHdhcm5pbmdzIGFyZSwgd2h5IHRoZXkgdHJpZ2dlciBhbmQgaG93IHlvdSdy
ZQo+IGZpeGluZyBpdC4gSG93IGEgY29tbWl0IG1lc3NhZ2Ugc2hvdWxkIGxvb2sgbGlrZSBpcyBh
bHNvIGV4cGxhaW5lZCBpbgo+IHRoYXQgZG9jdW1lbnQgSSBwb2ludGVkIHlvdSBhdC4KPiAKCk9L
LCBsb29rcyBiZXR0ZXIoJ3doYXQtd2h5LWhvdycpLiBJIHdpbGwgaW1wcm92ZSB0aGUgYWJvdmUg
bG9nLgoKPiBSZWZlcmluZyB0byBzb21lIGxpbmsgaXMgbm90IHdoYXQgd2UgZG8gaW4gY29tbWl0
IG1lc3NhZ2VzLgo+IAo+PiAgICAgQWRkIGEgZGVjbGFyYXRpb24gb2Ygc3RydWN0IGtpbWFnZSB0
byBmaXggdGhlc2UgY29tcGlsZSB3YXJuaW5ncy4KPj4gICAgIAo+PiAgICAgRml4ZXM6IGRkNWY3
MjYwNzZjYyAoImtleGVjOiBzdXBwb3J0IGZvciBrZXhlYyBvbiBwYW5pYyB1c2luZyBuZXcgc3lz
dGVtIGNhbGwiKQo+PiAgICAgUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50
ZWwuY29tPgo+PiAgICAgU2lnbmVkLW9mZi1ieTogTGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhh
dC5jb20+Cj4+ICAgICBMaW5rOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS8xMC8zMC84MzMK
PiAKPiAqTkVWRVIqIHVzZSBsa21sLm9yZyBvciBhbnkgb3RoZXIgZXh0ZXJuYWwgVVJMIGZvciBy
ZWZlcmluZyB0byBtYWlsCj4gdGhyZWFkcyBidXQgKmFsd2F5cyogdXNlIG91ciBvd24KPiAKPiBs
a21sLmtlcm5lbC5vcmcvci88TWVzc2FnZS1JRD4KPiAKPiByZWRpcmVjdG9yLiBTZWUgb3RoZXIg
dGlwIGNvbW1pdHMgZm9yIGFuIGV4YW1wbGUuCj4gCgpJdCdzIHVzZWZ1bCB0byBtZS4gVGhhbmtz
LgoKPj4+IFlvdSBjYW4gcmVhZAo+Pj4KPj4+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0
bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLmh0bWwKPj4+Cj4+PiBpbiB0aGUg
bWVhbnRpbWUsIGVzcGVjaWFsbHkgc2VjdGlvbgo+Pj4KPj4+ICI5KSBEb24ndCBnZXQgZGlzY291
cmFnZWQgLSBvciBpbXBhdGllbnQiCj4+Pgo+Pj4gd2hpbGUgd2FpdGluZy4KPj4KPj4gT0suIFRo
YW5rcy4KPiAKPiBBbmQgbWFrZSBzdXJlIHRvIHJlYWQgdGhhdCB3aG9sZSBkb2N1bWVudCBhbmQg
YWxzbyBoYXZlIGEgbG9vayBhdCB0aGUKPiBwcm9jZXNzIGRvY3VtZW50Cj4gCgpJIHdpbGwgcmVh
ZCB0aGUgYWJvdmUgZG9jdW1lbnQgY2FyZWZ1bGx5LiBCdXQgc29tZSBvZiB0aGUgcnVsZXMgaW4g
dGhlIGRvY3VtZW50IGFyZQpzdGlsbCBlYXN5IHRvIGJlIGZvcmdvdCwgbWF5YmUgbmVlZCB0byBw
cmFjdGljZSByZXBlYXRlZGx5LgoKPiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xh
dGVzdC9wcm9jZXNzL2luZGV4Lmh0bWwKPiAKPiBzbyB0aGF0IHlvdSBjYW4gYXZvaWQgc3VjaCBt
aXN0YWtlcyBpbiB0aGUgZnV0dXJlLgo+IAoKR29vZCBzdWdnZXN0aW9ucy4gVGhhbmsgeW91IHNv
IG11Y2guCgpMaWFuYm8KCj4gVGh4Lgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
