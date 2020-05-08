Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC82A1C9FA3
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 02:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAPQfspi/ikfRlppkSCV9dMv3/aYG+qbNNSHtCjMEj4=; b=YeeU/3mLW1Kr4S
	RIor2ZibYzUjE6SZqwarBmJOgGPbbLpa9s0/DEdwTp+4CbmYkV9WJa1zQ9HR/Rs8GXtRYXoDxy7hL
	uPZywl40qxyrDKAMbpJLKiTIQRR65u1icyrnOG+DOa0J0CFmMvsqFX7Ji/4h2Mq5VJEPvwShsLJri
	6KJhTjjnd32ZX2WkPiQVvgJfsRKdt2y6Dgvwc1rjhUEy+53R2uzsxpEgbgYti7KyulbLc0VHaZU40
	berM4U4qcSeEna+7nfq1gz4e66RKJfyQAFoNPhMxx7QpLq35ePwd+rCEbHG3wuOY95N8ZGZe7PwCb
	IjhAg9CpKsbZC+/p9LCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWqsj-0000XV-0J; Fri, 08 May 2020 00:28:49 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWqsg-0000WH-6T
 for kexec@lists.infradead.org; Fri, 08 May 2020 00:28:47 +0000
Received: by mail-qk1-x742.google.com with SMTP id c64so8253298qkf.12
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 17:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=On99XfF55m8LFqRcIrWhYWPWVDnoOhQd+qVw8VWh93k=;
 b=Bm0Ppbjf22QhOZtzauYqSHzmXAQRBARh868f/Yxl/bO4oft1SEVgTov77GepKoI9Q0
 hI5LUBZCfC4hSVvSKpZWsxqC7kVl4MJ1ESI8nQwWfy0CuKRi/zkSIiGMJf0edNdbDa9G
 G2cYo88LBODiFBzpIGq2Q+4Yf4Hi4EwbGhF0y86zj5cIr7j/VuT2F2cqU0pOzrXSNxUP
 pqYp7PQnKC/4kXXPSoSz3m3xIACA3nfruXTtgCMFGGefAvOUuLGHNJDGnbWpMie0BJ2s
 v2vKU2Ej20Bixshu6ciOiVNaMA0QiCBTCPMrP6NyF6wbxCHVRcs2jMfo8ERIMODr4R3w
 DTLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=On99XfF55m8LFqRcIrWhYWPWVDnoOhQd+qVw8VWh93k=;
 b=cA+w4LhZzkodV3lK/vuguVgU4cso5SxUdQrCohzTxjXAVtNKLJg86b7esWn4gSfpzm
 7Ngf2z4tQch1QMp9CuiAXIhlr1X2TcLP0YRMKMbiUfA3pYppIyKTgk2k/c+byRHYvKtf
 tdZA36uTTt6q0DuIcUx+dUbwhZTAjlNDq+IOXEYs6HGFnRVhClOjx4grR4H+mTh6FXXQ
 ln/Teen1jb2+Dii81u0BfgICxWrQUQHy26PxSGZ3f4MwUPgK1Nx7eb2tyMypgs57XaOH
 L3oVfv9aHV3QpjGo4DOdLdE8FCjv+qEf4Dbvo8HP2WukqsAJABeFzIU2qm9DDd2/xxow
 MD0A==
X-Gm-Message-State: AGi0PubgDCbUrNBwGf1GXXtdPDTWeqIrZ1pYhOlIQHu9kUQQJ9u0Bv/Z
 fbEwjCShJ5WxhfeyNtiGIltxVORtJTpGbg==
X-Google-Smtp-Source: APiQypKARSVBhYuC49c7dbY6Cziu6XEVjzZa76KBnegyK8EGy1U5ojsUPtOggQDBfm9nDFuhGB1SPw==
X-Received: by 2002:a37:a603:: with SMTP id p3mr124023qke.133.1588897722617;
 Thu, 07 May 2020 17:28:42 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id p10sm123350qtu.14.2020.05.07.17.28.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 17:28:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH] kernel: add panic_on_taint
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20200507233634.GA367616@optiplex-lnx>
Date: Thu, 7 May 2020 20:28:40 -0400
Message-Id: <438575BA-00CA-44BF-8C4C-693DCC00FDD1@lca.pw>
References: <20200507221503.GL205881@optiplex-lnx>
 <6B423101-ACF4-49A3-AD53-ACBF87F1ABE0@lca.pw>
 <20200507233634.GA367616@optiplex-lnx>
To: Rafael Aquini <aquini@redhat.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_172846_305315_2AE4A464 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Baoquan He <bhe@redhat.com>,
 linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSA3LCAyMDIwLCBhdCA3OjM2IFBNLCBSYWZhZWwgQXF1aW5pIDxhcXVpbmlAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4gT24gVGh1LCBNYXkgMDcsIDIwMjAgYXQgMDc6MDc6MjBQTSAt
MDQwMCwgUWlhbiBDYWkgd3JvdGU6Cj4+IAo+PiAKPj4+IE9uIE1heSA3LCAyMDIwLCBhdCA2OjE1
IFBNLCBSYWZhZWwgQXF1aW5pIDxhcXVpbmlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+PiAKPj4+IEl0
J3MgYSByZWFzb25hYmxlIGFuZCBzZWxmLWNvbnRhaW5lZCBmZWF0dXJlIHRoYXQgd2UgaGF2ZSBh
IHZhbGlkIHVzZSBmb3IuIAo+Pj4gSSBob25lc3RseSBmYWlsIHRvIHNlZSBpdCBjYXVzaW5nIHRo
YXQgYW1vdW50IG9mIGFubm95YW5jZSBhcyB5b3UgYXJlIAo+Pj4gc3VnZ2VzdGluZyBoZXJlLgo+
PiAKPj4gSXQgaXMgbm90IGEgYmlnIHRyb3VibGUgeWV0LCBidXQga2VlcGluZyBhbiBvYnNvbGV0
ZSBwYXRjaCB0aGF0IG5vdCB2ZXJ5IHN0cmFpZ2h0Zm9yd2FyZCB0byBmaWd1cmUgb3V0IHRoYXQg
aXQgd2lsbCBiZSBzdXBlcnNlZGVkIGJ5IHRoZSBwYW5pY19vbl90YWludCBwYXRjaCB3aWxsIG9u
bHkgY2F1c2UgbW9yZSBjb25mdXNpb24gdGhlIGxvbmdlciBpdCBoYXMgc3RheWVkIGluIGxpbnV4
LW5leHQuCj4+IAo+PiBUaGUgdGhpbmcgaXMgdGhhdCBldmVuIGlmIHlvdSBjYW7igJl0IGdldCB0
aGlzIHBhbmljX29uX3RhaW50ICh0aGUgc3VwZXJpb3Igc29sdXRpb24pIHBhdGNoIGFjY2VwdGVk
IGZvciBzb21lIHJlYXNvbnMsIHNvbWVvbmUgZWxzZSBjb3VsZCBzdGlsbCB3b3JrIG9uIGl0IHVu
dGlsIGl0IGdldCBtZXJnZWQuCj4+IAo+PiBUaHVzLCBJIGZhaWxlZCB0byBzZWUgYW55IHBvc3Np
YmlsaXR5IHdlIHdpbGwgZ28gYmFjayB0byB0aGUgaW5mZXJpb3Igc29sdXRpb24gKG1tLXNsdWIt
YWRkLXBhbmljX29uX2Vycm9yLXRvLXRoZS1kZWJ1Zy1mYWNpbGl0aWVzLnBhdGNoKSBieSBhbGwg
bWVhbnMuCj4+IAo+IAo+IFRoZXJlIGFyZSBwbGVudHkgb2YgZXhhbXBsZXMgb2YgdGhpbmdzIGJl
aW5nIGFkZGVkLCBjaGFuZ2VkLCBhbmQKPiByZW1vdmVkIGluIC1uZXh0LiBJT1csIGxpdmluZyBp
biBhIHRyYW5zaWVudCBzdGF0ZS4gSSB0aGluayBpdCdzIAo+IGEgcmVhc29uYWJsZSBjb21wcm9t
aXNlIHRvIGtlZXAgaXQgd2hpbGUgdGhlIG90aGVyIG9uZSBpcyBiZWluZCAKPiBpcm9uZWQgb3V0
Lgo+IAo+IFRoZSBmYWN0IHRoYXQgeW91IHByZWZlciBvbmUgc29sdXRpb24gdG8gYW5vdGhlciBk
b2Vzbid0Cj4gaW52YWxpZGF0ZSB0aGUgb25lIHlvdSBkaXNsaWtlLiAKCkFzIGZhciBJIGNhbiB0
ZWxsLCB0aGUgYmFyIG9mIHRoZSBvdGhlciBjb3JlIHN1YnN5c3RlbXMgYXJlIHF1aXRlIGhpZ2gg
ZXZlbiBmb3IgbGludXgtbmV4dC4gUGVvcGxlIGhhdmUgYmVlbiB2b2ljZWQgb3ZlciBhbmQgb3Zl
ciBhZ2FpbiB0byB1cmdlIEFuZHJldyBub3QgcGlja2luZyB1cCBwYXRjaGVzIHNvIGVhZ2VybHks
IGJ1dCBJIHdpbGwgc2F2ZSB0aGF0IGRpc2N1c3Npb24gZm9yIHRoZSBuZXh0IHRpbWUuCgpBbnl3
YXksIHRoYW5rcyBmb3Igd29ya2luZyBmb3IgdGhlIHBhbmljX29uX3RhaW50IHBhdGNoLiBJIGJl
bGlldmUgaXQgY291bGQgYmUgdXNlZnVsIGZvciBhbGwgdGVzdGluZyBhZ2VudHMgdG8gY2F0Y2gg
dGhvc2UgYmFkIHBhZ2VzIGVhcmxpZXIuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
