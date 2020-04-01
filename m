Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C0419ABFC
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 14:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMwiXlvfCp1hAHEap5FXcolXhDqhHyiUbUVf7C6Z3tg=; b=g7heahbdpXMlzS
	67wnw7pro+l3ou0ESEwr87wPa3ttMYTubNdzwIWsvW5XimDNdUaQagwXX1eFy8MdQQ9fI0JhaOGq6
	kf8jd9F7XFdEZRT1b57Ag5YXjOdLFqJmFiA9xKivGPX4sCfPeZ+1Ea0GwYLOp6ouMvlLs5pc05usU
	Y8uNsCdexAWsQMb+PI941ZjyciyUwUIx6R7UMqWlq6o0jyGghY3vPuFYft2iEIqKltaPYx8gLtHom
	ae3Qe6a2mDLAGm+NCpMvg8t2w3ukaabC+WPClSFEU6M0MWRzhCUykvysUZwzOi8hDwAKZdDy89bzx
	31pyS0vE/McZE9MTeCsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcmW-0006jn-QZ; Wed, 01 Apr 2020 12:47:44 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcmT-0006jS-Ut
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 12:47:43 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id E40BC25B779;
 Wed,  1 Apr 2020 23:47:40 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 6CFCA1B71; Wed,  1 Apr 2020 14:47:38 +0200 (CEST)
Date: Wed, 1 Apr 2020 14:47:38 +0200
From: Simon Horman <horms@verge.net.au>
To: Varad Gautam <vrd@amazon.de>
Subject: Re: [PATCH 2/3] kexec: Introduce --load-live-update for xen
Message-ID: <20200401124738.GE29376@vergenet.net>
References: <1581066033-25120-1-git-send-email-vrd@amazon.de>
 <1581066033-25120-2-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581066033-25120-2-git-send-email-vrd@amazon.de>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_054742_139285_4D3B8042 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kexec@lists.infradead.org, David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gRnJpLCBGZWIgMDcsIDIwMjAgYXQgMTA6MDA6MzJBTSArMDEwMCwgVmFyYWQgR2F1dGFtIHdy
b3RlOgo+IFhlbiBpcyBpbnRlbmRlZCB0byBleHBvc2UgYSBLRVhFQ19UWVBFX0xJVkVfVVBEQVRF
IG9wZXJhdGlvbiB3aGljaAo+IGltcGxpZXMgYSBzdGF0ZWZ1bC1rZXhlYyBpbnRvIGEgbmV3IHhl
biBpbWFnZSAtIG9yIGEgImxpdmUgdXBkYXRlIi4KPiBNYWtlIGtleGVjLXRvb2xzIGNhcGFibGUg
b2YgdHJpZ2dlcmluZyBhIGxpdmUgdXBkYXRlLgo+IAo+IEZvciBhIG11bHRpYm9vdDIgeGVuIGlt
YWdlLCB0aGlzIHdpbGw6Cj4gLSBsb2FkIGEgeGVuIEVsZiBpbnRvIGludG8gS0VYRUNfUkFOR0Vf
TUFfWEVOCj4gLSBsb2FkIHB1cmdhdG9yeSBhbmQgbW9kdWxlcyBpbnRvIEtFWEVDX1JBTkdFX01B
X0xJVkVVUERBVEUKPiAtIGFwcGVuZCBFbGYgY21kbGluZSB3aXRoICIgbGl2ZXVwZGF0ZT08c2l6
ZT5APGFkZHI+Cj4gCj4gU2lnbmVkLW9mZi1ieTogVmFyYWQgR2F1dGFtIDx2cmRAYW1hem9uLmRl
Pgo+IENDOiBEYXZpZCBXb29kaG91c2UgPGR3bXdAYW1hem9uLmNvLnVrPgoKU29ycnkgZm9yIHRo
ZSBsb25nIGRlbGF5LgoKVGhpcyBwYXRjaCBkb2VzIG5vdCBhcHBlYXIgdG8gY29tcGlsZS4KCmdj
YyAtV2FsbCAtV2V4dHJhIC1XcG9pbnRlci1hcml0aCAtV3dyaXRlLXN0cmluZ3MgLVdmb3JtYXQg
LU8yIC1mb21pdC1mcmFtZS1wb2ludGVyIC1waXBlIC1mbm8tc3RyaWN0LWFsaWFzaW5nIC1XYWxs
IC1Xc3RyaWN0LXByb3RvdHlwZXMgLUkuL2luY2x1ZGUgLUkuL3V0aWxfbGliL2luY2x1ZGUgLUlp
bmNsdWRlLyAgLUkuL2tleGVjL2FyY2gveDg2XzY0L2luY2x1ZGUgIC1jIC1NRCAtbyBrZXhlYy9r
ZXhlYy5vIGtleGVjL2tleGVjLmMKa2V4ZWMva2V4ZWMuYzogSW4gZnVuY3Rpb24g4oCYbXlfc2h1
dGRvd27igJk6CmtleGVjL2tleGVjLmM6ODg5OjM6IHdhcm5pbmc6IGluaXRpYWxpemF0aW9uIGRp
c2NhcmRzIOKAmGNvbnN04oCZIHF1YWxpZmllciBmcm9tIHBvaW50ZXIgdGFyZ2V0IHR5cGUgWy1X
ZGlzY2FyZGVkLXF1YWxpZmllcnNdCiAgICJzaHV0ZG93biIsCiAgIF5+fn5+fn5+fn4Ka2V4ZWMv
a2V4ZWMuYzo4OTA6Mzogd2FybmluZzogaW5pdGlhbGl6YXRpb24gZGlzY2FyZHMg4oCYY29uc3Ti
gJkgcXVhbGlmaWVyIGZyb20gcG9pbnRlciB0YXJnZXQgdHlwZSBbLVdkaXNjYXJkZWQtcXVhbGlm
aWVyc10KICAgIi1yIiwKICAgXn5+fgprZXhlYy9rZXhlYy5jOjg5MTozOiB3YXJuaW5nOiBpbml0
aWFsaXphdGlvbiBkaXNjYXJkcyDigJhjb25zdOKAmSBxdWFsaWZpZXIgZnJvbSBwb2ludGVyIHRh
cmdldCB0eXBlIFstV2Rpc2NhcmRlZC1xdWFsaWZpZXJzXQogICAibm93IiwKICAgXn5+fn4Ka2V4
ZWMva2V4ZWMuYzogSW4gZnVuY3Rpb24g4oCYY21kbGluZV9hZGRfbGl2ZXVwZGF0ZeKAmToKa2V4
ZWMva2V4ZWMuYzoxMTg3OjI6IHdhcm5pbmc6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0
aW9uIOKAmHhlbl9nZXRfa2V4ZWNfcmFuZ2XigJk7IGRpZCB5b3UgbWVhbiDigJh4ZW5fa2V4ZWNf
c3RhdHVz4oCZPyBbLVdpbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICB4ZW5fZ2V0X2tl
eGVjX3JhbmdlKEtFWEVDX1JBTkdFX01BX0xJVkVVUERBVEUsICZsdV9zdGFydCwgJmx1X2VuZCk7
CiAgXn5+fn5+fn5+fn5+fn5+fn5+fgogIHhlbl9rZXhlY19zdGF0dXMKa2V4ZWMva2V4ZWMuYzox
MTg3OjIyOiBlcnJvcjog4oCYS0VYRUNfUkFOR0VfTUFfTElWRVVQREFUReKAmSB1bmRlY2xhcmVk
IChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbikKICB4ZW5fZ2V0X2tleGVjX3JhbmdlKEtFWEVD
X1JBTkdFX01BX0xJVkVVUERBVEUsICZsdV9zdGFydCwgJmx1X2VuZCk7CiAgICAgICAgICAgICAg
ICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmtleGVjL2tleGVjLmM6MTE4NzoyMjog
bm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZv
ciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4Ka2V4ZWMva2V4ZWMuYzogSW4gZnVuY3Rpb24g
4oCYbWFpbuKAmToKa2V4ZWMva2V4ZWMuYzoxNDMzOjM3OiBlcnJvcjog4oCYS0VYRUNfTElWRV9V
UERBVEXigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91
IG1lYW4g4oCYS0VYRUNfTE9BREVEX1BBVEjigJk/CiAgICAgICAgICAgIEtFWEVDX1BSRVNFUlZF
X0NPTlRFWFQgOiBLRVhFQ19MSVZFX1VQREFURTsKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBLRVhFQ19MT0FERURfUEFUSAprZXhlYy9rZXhlYy5jOjEzNzQ6MTY6IHdhcm5pbmc6
IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9
XQogICAga2V4ZWNfZGVidWcgPSAxOwogICAgfn5+fn5+fn5+fn5+Xn5+CmtleGVjL2tleGVjLmM6
MTM3NTozOiBub3RlOiBoZXJlCiAgIGNhc2UgT1BUX05PSUZET1dOOgogICBefn5+Cm1ha2U6ICoq
KiBbTWFrZWZpbGU6MTE0OiBrZXhlYy9rZXhlYy5vXSBFcnJvciAxCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVj
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9rZXhlYwo=
