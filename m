Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4691ED711
	for <lists+kexec@lfdr.de>; Wed,  3 Jun 2020 21:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enLbv59gedcc0T4qOzSZgukb/ZIGoOrm3smlg9Ndmlg=; b=PiiKkQrv9vI0aE
	XYHRsZTRhqdQ+R9WrCVNcdYre2WokV0cko5GEnGN0AHEeK1B7gk39iq0yaBCfJMGKP4QLEKo/tmXT
	6KCV8lljdLRt5tlNRicTqTL2NFkl1wt+oTNhNBQLYTBLYBvDMX07D8Iw8MWkQDEBObUJRqrM+Y7u9
	0Az/mn45OzpYFYS0DAz2dqLeVaZicHhDCzp6WPlWphR3nB3dtbnza2+7KZLjYw01h1OeIglhj3HuX
	K6aIi38+/8WcI68x7TJSkVpLETt1nVbNGLHHmYh7a/ug7cb011SCf4ffuRXJWNgfGVeEL6lEvmMFe
	LnHmK7Aen5iudsCNUA3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgZMU-0000k1-M0; Wed, 03 Jun 2020 19:47:42 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgZMK-0000cH-6u
 for kexec@lists.infradead.org; Wed, 03 Jun 2020 19:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591213649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MpiPTiZE4QKP6LGRxdgsc2DNZHl5BTlPB8Z9SBWQ1V8=;
 b=UbMGy8PtAEjprmtdhcgVNxehSiuWSscyyKwSvtjXJlA2D9n3vyTnXdKE9wc1njNzvfx8/o
 3hujiprWEBPkQD/8xnKHf05aRv5AFKwMovgE/VLp6pSM39BzF3RTQnj+NSGuXTBCD/GjJF
 q4ssGgvdrSCxcF6ySFO3/tWCpmNhdDc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-m3Jnie5JPDeoZPskwR5-uw-1; Wed, 03 Jun 2020 15:47:21 -0400
X-MC-Unique: m3Jnie5JPDeoZPskwR5-uw-1
Received: by mail-qt1-f200.google.com with SMTP id d2so2885853qtw.4
 for <kexec@lists.infradead.org>; Wed, 03 Jun 2020 12:47:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MpiPTiZE4QKP6LGRxdgsc2DNZHl5BTlPB8Z9SBWQ1V8=;
 b=JECFKG32a+Y6ZMo79wcYStPE4NE0ST8mTKOJRggu38N814x1YHOGpSsZtkBaBkUv+S
 qRIFQWpGSKeMqwALYoNKOYu9EZJ1m1q/92T4FrkLkuIDnEWi4y7ECxHB2x4paaWPhZLg
 oEkrV1irVLK4OlfNVA/NLXfLgc2T0k+9G5iXhx7VZR5IsmXCKUg2JzrFXowZKXmOEPRA
 7bzfRDG1FFzAlVKaayUsXnXknNfOhrGNpD39jMcbmmZz3LYNXQV/dlOQSpJODDSmS07e
 nUxkNOweZWHxEI7Vdu9778yreO0Ub+PKzSlNpJpSj0956IzvbrsjbdK+SuGlbgrRJKMl
 nPhg==
X-Gm-Message-State: AOAM533Ye+4sSksICXY6wYmkBFhAl47KtG4tKqKnsyB8NiH0fens/t90
 /MkUYVdVVWardIZXHvWTolw3SPiL8h/sZAuaMHQ1VbVfd3vSAX3ZKyzSEjnX/mA0P5ghhWfOcGc
 Fpnw2twjDsKpdqFkrGLDMCTuObSjjCownRg5A
X-Received: by 2002:aed:2d44:: with SMTP id h62mr1027600qtd.167.1591213640524; 
 Wed, 03 Jun 2020 12:47:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz1Io1aYd8IlFBCtau1L5drogfSTHZcw8fgoyzbdNnIk9SmSkewQ442qi8Pp7FEqs5YJBjc4zyfQsZo9A24+1A=
X-Received: by 2002:aed:2d44:: with SMTP id h62mr1027568qtd.167.1591213640117; 
 Wed, 03 Jun 2020 12:47:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
 <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
 <CACi5LpOZzdfEKUYAfYxtgeUbk9K6YFVUKLaGS8XoS0kForjH9A@mail.gmail.com>
 <F64A309C-B9C0-45F2-A50D-D677005C33A6@oracle.com>
 <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
 <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
 <CAJ2QiJJhUCnobrMHui5=6zLzgy3KsoPxrqiH_oYT8Jhb5MkmbA@mail.gmail.com>
 <8463464e-5461-f328-621c-bacc6a3b88dd@huawei.com>
 <8E0D45DC-12BF-437D-A342-03E974D9C6D4@oracle.com>
In-Reply-To: <8E0D45DC-12BF-437D-A342-03E974D9C6D4@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 4 Jun 2020 01:17:06 +0530
Message-ID: <CACi5LpN-+NRnaDoWWWidbzma8BNzmofA5FQBV=cPF1Mc84FpFg@mail.gmail.com>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: John Donnelly <john.p.donnelly@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_124732_408530_536E2EF5 
X-CRM114-Status: GOOD (  29.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Baoquan He <bhe@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 chenzhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 RuiRui Yang <dyoung@redhat.com>, Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, guohanjun@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgQWxsLAoKT24gV2VkLCBKdW4gMywgMjAyMCBhdCA5OjAzIFBNIEpvaG4gRG9ubmVsbHkgPGpv
aG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90ZToKPgo+Cj4KPiA+IE9uIEp1biAzLCAyMDIw
LCBhdCA4OjIwIEFNLCBjaGVuemhvdSA8Y2hlbnpob3UxMEBodWF3ZWkuY29tPiB3cm90ZToKPiA+
Cj4gPiBIaSwKPiA+Cj4gPgo+ID4gT24gMjAyMC82LzMgMTk6NDcsIFByYWJoYWthciBLdXNod2Fo
YSB3cm90ZToKPiA+PiBIaSBDaGVuLAo+ID4+Cj4gPj4gT24gVHVlLCBKdW4gMiwgMjAyMCBhdCA4
OjEyIFBNIEpvaG4gRG9ubmVsbHkgPGpvaG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90ZToK
PiA+Pj4KPiA+Pj4KPiA+Pj4+IE9uIEp1biAyLCAyMDIwLCBhdCAxMjozOCBBTSwgUHJhYmhha2Fy
IEt1c2h3YWhhIDxwcmFiaGFrYXIucGtpbkBnbWFpbC5jb20+IHdyb3RlOgo+ID4+Pj4KPiA+Pj4+
IE9uIFR1ZSwgSnVuIDIsIDIwMjAgYXQgMzoyOSBBTSBKb2huIERvbm5lbGx5IDxqb2huLnAuZG9u
bmVsbHlAb3JhY2xlLmNvbT4gd3JvdGU6Cj4gPj4+Pj4gSGkgLiAgU2VlIGJlbG93ICEKPiA+Pj4+
Pgo+ID4+Pj4+PiBPbiBKdW4gMSwgMjAyMCwgYXQgNDowMiBQTSwgQmh1cGVzaCBTaGFybWEgPGJo
c2hhcm1hQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Pj4+Pgo+ID4+Pj4+PiBIaSBKb2huLAo+ID4+
Pj4+Pgo+ID4+Pj4+PiBPbiBUdWUsIEp1biAyLCAyMDIwIGF0IDE6MDEgQU0gSm9obiBEb25uZWxs
eSA8Sm9obi5QLmRvbm5lbGx5QG9yYWNsZS5jb20+IHdyb3RlOgo+ID4+Pj4+Pj4gSGksCj4gPj4+
Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IE9uIDYvMS8yMCA3OjAyIEFNLCBQcmFiaGFrYXIgS3Vz
aHdhaGEgd3JvdGU6Cj4gPj4+Pj4+Pj4gSGkgQ2hlbiwKPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IE9u
IFRodSwgTWF5IDIxLCAyMDIwIGF0IDM6MDUgUE0gQ2hlbiBaaG91IDxjaGVuemhvdTEwQGh1YXdl
aS5jb20+IHdyb3RlOgo+ID4+Pj4+Pj4+PiBUaGlzIHBhdGNoIHNlcmllcyBlbmFibGUgcmVzZXJ2
aW5nIGNyYXNoa2VybmVsIGFib3ZlIDRHIGluIGFybTY0Lgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+
PiBUaGVyZSBhcmUgZm9sbG93aW5nIGlzc3VlcyBpbiBhcm02NCBrZHVtcDoKPiA+Pj4+Pj4+Pj4g
MS4gV2UgdXNlIGNyYXNoa2VybmVsPVggdG8gcmVzZXJ2ZSBjcmFzaGtlcm5lbCBiZWxvdyA0Rywg
d2hpY2ggd2lsbCBmYWlsCj4gPj4+Pj4+Pj4+IHdoZW4gdGhlcmUgaXMgbm8gZW5vdWdoIGxvdyBt
ZW1vcnkuCj4gPj4+Pj4+Pj4+IDIuIEN1cnJlbnRseSwgY3Jhc2hrZXJuZWw9WUBYIGNhbiBiZSB1
c2VkIHRvIHJlc2VydmUgY3Jhc2hrZXJuZWwgYWJvdmUgNEcsCj4gPj4+Pj4+Pj4+IGluIHRoaXMg
Y2FzZSwgaWYgc3dpb3RsYiBvciBETUEgYnVmZmVycyBhcmUgcmVxdWlyZWQsIGNyYXNoIGR1bXAg
a2VybmVsCj4gPj4+Pj4+Pj4+IHdpbGwgYm9vdCBmYWlsdXJlIGJlY2F1c2UgdGhlcmUgaXMgbm8g
bG93IG1lbW9yeSBhdmFpbGFibGUgZm9yIGFsbG9jYXRpb24uCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+
Pj4gV2UgYXJlIGdldHRpbmcgIndhcm5fYWxsb2MiIFsxXSB3YXJuaW5nIGR1cmluZyBib290IG9m
IGtkdW1wIGtlcm5lbAo+ID4+Pj4+Pj4+IHdpdGggYm9vdGFyZ3MgYXMgWzJdIG9mIHByaW1hcnkg
a2VybmVsLgo+ID4+Pj4+Pj4+IFRoaXMgZXJyb3Igb2JzZXJ2ZWQgb24gVGh1bmRlclgyICBBUk02
NCBwbGF0Zm9ybS4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEl0IGlzIG9ic2VydmVkIHdpdGggbGF0
ZXN0IHVwc3RyZWFtIHRhZyAodjUuNy1yYzMpIHdpdGggdGhpcyBwYXRjaCBzZXQKPiA+Pj4+Pj4+
PiBhbmQgaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9waXBlcm1haWwva2V4ZWMvMjAyMC1NYXkvMDI1MTI4Lmh0bWxfXzshIUdxaXZQVmE3QnJp
byFMblRTQVJrQ3QwVjBGb3pSMEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQ
SWhzYXhiaUlBQWx6dSQKPiA+Pj4+Pj4+PiBBbHNvICoqd2l0aG91dCoqIHRoaXMgcGF0Y2gtc2V0
Cj4gPj4+Pj4+Pj4gImh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3d3dy5zcGlu
aWNzLm5ldC9saXN0cy9hcm0ta2VybmVsL21zZzgwNjg4Mi5odG1sX187ISFHcWl2UFZhN0JyaW8h
TG5UU0FSa0N0MFYwRm96UjBLbXFvb2FINUFEdGRYdnMzbVBkUDNLUlZxQUxtdlNLMlZtQ2tJUElo
c2F4YmpDNnVqTUEkIgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gVGhpcyBpc3N1ZSBjb21lcyB3aGVu
ZXZlciBjcmFzaGtlcm5lbCBtZW1vcnkgaXMgcmVzZXJ2ZWQgYWZ0ZXIgMHhjMDAwXzAwMDAuCj4g
Pj4+Pj4+Pj4gTW9yZSBkZXRhaWxzIGRpc2N1c3NlZCBlYXJsaWVyIGluCj4gPj4+Pj4+Pj4gaHR0
cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2Fy
bS1rZXJuZWwvbXNnODA2ODgyLmh0bWxfXzshIUdxaXZQVmE3QnJpbyFMblRTQVJrQ3QwVjBGb3pS
MEttcW9vYUg1QUR0ZFh2czNtUGRQM0tSVnFBTG12U0syVm1Da0lQSWhzYXhiakM2dWpNQSQgIHdp
dGhvdXQgYW55Cj4gPj4+Pj4+Pj4gc29sdXRpb24KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IFRoaXMg
cGF0Y2gtc2V0IGlzIGV4cGVjdGVkIHRvIHNvbHZlIHNpbWlsYXIga2luZCBvZiBpc3N1ZS4KPiA+
Pj4+Pj4+PiBpLmUuIGxvdyBtZW1vcnkgaXMgb25seSB0YXJnZXRlZCBmb3IgRE1BLCBzd2lvdGxi
OyBTbyBhYm92ZSBtZW50aW9uZWQKPiA+Pj4+Pj4+PiBvYnNlcnZhdGlvbiBzaG91bGQgYmUgY29u
c2lkZXJlZC9maXhlZC4gLgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gLS1wawo+ID4+Pj4+Pj4+Cj4g
Pj4+Pj4+Pj4gWzFdCj4gPj4+Pj4+Pj4gWyAgIDMwLjM2NjY5NV0gRE1JOiBDYXZpdW0gSW5jLiBT
YWJlci9TYWJlciwgQklPUwo+ID4+Pj4+Pj4+IFRYMi1GVy1SZWxlYXNlLTMuMS1idWlsZF8wMS0y
ODAzLWc3NDI1M2E1NDFhIG1tL2RkL3l5eXkKPiA+Pj4+Pj4+PiBbICAgMzAuMzY3Njk2XSBORVQ6
IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE2Cj4gPj4+Pj4+Pj4gWyAgIDMwLjM2OTk3M10g
c3dhcHBlci8wOiBwYWdlIGFsbG9jYXRpb24gZmFpbHVyZTogb3JkZXI6NiwKPiA+Pj4+Pj4+PiBt
b2RlOjB4MShHRlBfRE1BKSwgbm9kZW1hc2s9KG51bGwpLGNwdXNldD0vLG1lbXNfYWxsb3dlZD0w
Cj4gPj4+Pj4+Pj4gWyAgIDMwLjM2OTk4MF0gQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVyLzAg
Tm90IHRhaW50ZWQgNS43LjAtcmMzKyAjMTIxCj4gPj4+Pj4+Pj4gWyAgIDMwLjM2OTk4MV0gSGFy
ZHdhcmUgbmFtZTogQ2F2aXVtIEluYy4gU2FiZXIvU2FiZXIsIEJJT1MKPiA+Pj4+Pj4+PiBUWDIt
RlctUmVsZWFzZS0zLjEtYnVpbGRfMDEtMjgwMy1nNzQyNTNhNTQxYSBtbS9kZC95eXl5Cj4gPj4+
Pj4+Pj4gWyAgIDMwLjM2OTk4NF0gQ2FsbCB0cmFjZToKPiA+Pj4+Pj4+PiBbICAgMzAuMzY5OTg5
XSAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MWY4Cj4gPj4+Pj4+Pj4gWyAgIDMwLjM2OTk5MV0gIHNo
b3dfc3RhY2srMHgyMC8weDMwCj4gPj4+Pj4+Pj4gWyAgIDMwLjM2OTk5N10gIGR1bXBfc3RhY2sr
MHhjMC8weDEwYwo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAwMDFdICB3YXJuX2FsbG9jKzB4MTBjLzB4
MTc4Cj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDAwNF0gIF9fYWxsb2NfcGFnZXNfc2xvd3BhdGguY29u
c3Rwcm9wLjExMSsweGIxMC8weGI1MAo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAwMDZdICBfX2FsbG9j
X3BhZ2VzX25vZGVtYXNrKzB4MmI0LzB4MzAwCj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDAwOF0gIGFs
bG9jX3BhZ2VfaW50ZXJsZWF2ZSsweDI0LzB4OTgKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMDExXSAg
YWxsb2NfcGFnZXNfY3VycmVudCsweGU0LzB4MTA4Cj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDAxN10g
IGRtYV9hdG9taWNfcG9vbF9pbml0KzB4NDQvMHgxYTQKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMDIw
XSAgZG9fb25lX2luaXRjYWxsKzB4NTQvMHgyMjgKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMDI3XSAg
a2VybmVsX2luaXRfZnJlZWFibGUrMHgyMjgvMHgyY2MKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMDMx
XSAga2VybmVsX2luaXQrMHgxYy8weDExMAo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAwMzRdICByZXRf
ZnJvbV9mb3JrKzB4MTAvMHgxOAo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAwMzZdIE1lbS1JbmZvOgo+
ID4+Pj4+Pj4+IFsgICAzMC4zNzAwNjRdIGFjdGl2ZV9hbm9uOjAgaW5hY3RpdmVfYW5vbjowIGlz
b2xhdGVkX2Fub246MAo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAwNjRdICBhY3RpdmVfZmlsZTowIGlu
YWN0aXZlX2ZpbGU6MCBpc29sYXRlZF9maWxlOjAKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAg
dW5ldmljdGFibGU6MCBkaXJ0eTowIHdyaXRlYmFjazowIHVuc3RhYmxlOjAKPiA+Pj4+Pj4+PiBb
ICAgMzAuMzcwMDY0XSAgc2xhYl9yZWNsYWltYWJsZTozNCBzbGFiX3VucmVjbGFpbWFibGU6NDQz
OAo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAwNjRdICBtYXBwZWQ6MCBzaG1lbTowIHBhZ2V0YWJsZXM6
MTQgYm91bmNlOjAKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMDY0XSAgZnJlZToxNTM3NzE5IGZyZWVf
cGNwOjIxOSBmcmVlX2NtYTowCj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDA3MF0gTm9kZSAwIGFjdGl2
ZV9hbm9uOjBrQiBpbmFjdGl2ZV9hbm9uOjBrQgo+ID4+Pj4+Pj4+IGFjdGl2ZV9maWxlOjBrQiBp
bmFjdGl2ZV9maWxlOjBrQiB1bmV2aWN0YWJsZTowa0IgaXNvbGF0ZWQoYW5vbik6MGtCCj4gPj4+
Pj4+Pj4gaXNvbGF0ZWQoZmlsZSk6MGtCIG1hcHBlZDowa0IgZGlydHk6MGtCIHdyaXRlYmFjazow
a0Igc2htZW06MGtCCj4gPj4+Pj4+Pj4gc2htZW1fdGhwOiAwa0Igc2htZW1fcG1kbWFwcGVkOiAw
a0IgYW5vbl90aHA6IDBrQiB3cml0ZWJhY2tfdG1wOjBrQgo+ID4+Pj4+Pj4+IHVuc3RhYmxlOjBr
QiBhbGxfdW5yZWNsYWltYWJsZT8gbm8KPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMDczXSBOb2RlIDEg
YWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4gPj4+Pj4+Pj4gYWN0aXZlX2ZpbGU6
MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBrQiBpc29sYXRlZChhbm9uKTowa0IK
PiA+Pj4+Pj4+PiBpc29sYXRlZChmaWxlKTowa0IgbWFwcGVkOjBrQiBkaXJ0eTowa0Igd3JpdGVi
YWNrOjBrQiBzaG1lbTowa0IKPiA+Pj4+Pj4+PiBzaG1lbV90aHA6IDBrQiBzaG1lbV9wbWRtYXBw
ZWQ6IDBrQiBhbm9uX3RocDogMGtCIHdyaXRlYmFja190bXA6MGtCCj4gPj4+Pj4+Pj4gdW5zdGFi
bGU6MGtCIGFsbF91bnJlY2xhaW1hYmxlPyBubwo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAwNzldIE5v
ZGUgMCBETUEgZnJlZTowa0IgbWluOjBrQiBsb3c6MGtCIGhpZ2g6MGtCCj4gPj4+Pj4+Pj4gcmVz
ZXJ2ZWRfaGlnaGF0b21pYzowS0IgYWN0aXZlX2Fub246MGtCIGluYWN0aXZlX2Fub246MGtCCj4g
Pj4+Pj4+Pj4gYWN0aXZlX2ZpbGU6MGtCIGluYWN0aXZlX2ZpbGU6MGtCIHVuZXZpY3RhYmxlOjBr
QiB3cml0ZXBlbmRpbmc6MGtCCj4gPj4+Pj4+Pj4gcHJlc2VudDoxMjhrQiBtYW5hZ2VkOjBrQiBt
bG9ja2VkOjBrQiBrZXJuZWxfc3RhY2s6MGtCIHBhZ2V0YWJsZXM6MGtCCj4gPj4+Pj4+Pj4gYm91
bmNlOjBrQiBmcmVlX3BjcDowa0IgbG9jYWxfcGNwOjBrQiBmcmVlX2NtYTowa0IKPiA+Pj4+Pj4+
PiBbICAgMzAuMzcwMDg0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDI1MCA2MDYzIDYwNjMKPiA+Pj4+
Pj4+PiBbICAgMzAuMzcwMDkwXSBOb2RlIDAgRE1BMzIgZnJlZToyNTYwMDBrQiBtaW46NDA4a0Ig
bG93OjY2NGtCCj4gPj4+Pj4+Pj4gaGlnaDo5MjBrQiByZXNlcnZlZF9oaWdoYXRvbWljOjBLQiBh
Y3RpdmVfYW5vbjowa0IgaW5hY3RpdmVfYW5vbjowa0IKPiA+Pj4+Pj4+PiBhY3RpdmVfZmlsZTow
a0IgaW5hY3RpdmVfZmlsZTowa0IgdW5ldmljdGFibGU6MGtCIHdyaXRlcGVuZGluZzowa0IKPiA+
Pj4+Pj4+PiBwcmVzZW50OjI2OTcwMGtCIG1hbmFnZWQ6MjU2MDAwa0IgbWxvY2tlZDowa0Iga2Vy
bmVsX3N0YWNrOjBrQgo+ID4+Pj4+Pj4+IHBhZ2V0YWJsZXM6MGtCIGJvdW5jZTowa0IgZnJlZV9w
Y3A6MGtCIGxvY2FsX3BjcDowa0IgZnJlZV9jbWE6MGtCCj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDA5
NF0gbG93bWVtX3Jlc2VydmVbXTogMCAwIDU4MTMgNTgxMwo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAx
MDBdIE5vZGUgMCBOb3JtYWwgZnJlZTo1ODk0ODc2a0IgbWluOjk1NTJrQiBsb3c6MTU1MDRrQgo+
ID4+Pj4+Pj4+IGhpZ2g6MjE0NTZrQiByZXNlcnZlZF9oaWdoYXRvbWljOjBLQiBhY3RpdmVfYW5v
bjowa0IgaW5hY3RpdmVfYW5vbjowa0IKPiA+Pj4+Pj4+PiBhY3RpdmVfZmlsZTowa0IgaW5hY3Rp
dmVfZmlsZTowa0IgdW5ldmljdGFibGU6MGtCIHdyaXRlcGVuZGluZzowa0IKPiA+Pj4+Pj4+PiBw
cmVzZW50OjgzODg2MDhrQiBtYW5hZ2VkOjU5NTMxMTJrQiBtbG9ja2VkOjBrQiBrZXJuZWxfc3Rh
Y2s6MjE2NzJrQgo+ID4+Pj4+Pj4+IHBhZ2V0YWJsZXM6NTZrQiBib3VuY2U6MGtCIGZyZWVfcGNw
Ojg3NmtCIGxvY2FsX3BjcDoxNzZrQiBmcmVlX2NtYTowa0IKPiA+Pj4+Pj4+PiBbICAgMzAuMzcw
MTA0XSBsb3dtZW1fcmVzZXJ2ZVtdOiAwIDAgMCAwCj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDEwN10g
Tm9kZSAwIERNQTogMCo0a0IgMCo4a0IgMCoxNmtCIDAqMzJrQiAwKjY0a0IgMCoxMjhrQgo+ID4+
Pj4+Pj4+IDAqMjU2a0IgMCo1MTJrQiAwKjEwMjRrQiAwKjIwNDhrQiAwKjQwOTZrQiA9IDBrQgo+
ID4+Pj4+Pj4+IFsgICAzMC4zNzAxMTNdIE5vZGUgMCBETUEzMjogMCo0a0IgMCo4a0IgMCoxNmtC
IDAqMzJrQiAwKjY0a0IgMCoxMjhrQgo+ID4+Pj4+Pj4+IDAqMjU2a0IgMCo1MTJrQiAwKjEwMjRr
QiAxKjIwNDhrQiAoTSkgNjIqNDA5NmtCIChNKSA9IDI1NjAwMGtCCj4gPj4+Pj4+Pj4gWyAgIDMw
LjM3MDExOV0gTm9kZSAwIE5vcm1hbDogMio0a0IgKE0pIDMqOGtCIChNRSkgMioxNmtCIChVRSkg
MyozMmtCCj4gPj4+Pj4+Pj4gKFVNKSAxKjY0a0IgKFUpIDIqMTI4a0IgKE0pIDIqMjU2a0IgKE1F
KSAzKjUxMmtCIChNRSkgMyoxMDI0a0IgKE1FKQo+ID4+Pj4+Pj4+IDMqMjA0OGtCIChVTUUpIDE0
MzYqNDA5NmtCIChNKSA9IDU4OTM2MDBrQgo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAxMjldIE5vZGUg
MCBodWdlcGFnZXNfdG90YWw9MCBodWdlcGFnZXNfZnJlZT0wCj4gPj4+Pj4+Pj4gaHVnZXBhZ2Vz
X3N1cnA9MCBodWdlcGFnZXNfc2l6ZT0xMDQ4NTc2a0IKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMTMw
XSAwIHRvdGFsIHBhZ2VjYWNoZSBwYWdlcwo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAxMzJdIDAgcGFn
ZXMgaW4gc3dhcCBjYWNoZQo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAxMzRdIFN3YXAgY2FjaGUgc3Rh
dHM6IGFkZCAwLCBkZWxldGUgMCwgZmluZCAwLzAKPiA+Pj4+Pj4+PiBbICAgMzAuMzcwMTM1XSBG
cmVlIHN3YXAgID0gMGtCCj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDEzNl0gVG90YWwgc3dhcCA9IDBr
Qgo+ID4+Pj4+Pj4+IFsgICAzMC4zNzAxMzddIDIxNjQ2MDkgcGFnZXMgUkFNCj4gPj4+Pj4+Pj4g
WyAgIDMwLjM3MDEzOV0gMCBwYWdlcyBIaWdoTWVtL01vdmFibGVPbmx5Cj4gPj4+Pj4+Pj4gWyAg
IDMwLjM3MDE0MF0gNjEyMzMxIHBhZ2VzIHJlc2VydmVkCj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDE0
MV0gMCBwYWdlcyBod3BvaXNvbmVkCj4gPj4+Pj4+Pj4gWyAgIDMwLjM3MDE0M10gRE1BOiBmYWls
ZWQgdG8gYWxsb2NhdGUgMjU2IEtpQiBwb29sIGZvciBhdG9taWMKPiA+Pj4+Pj4+PiBjb2hlcmVu
dCBhbGxvY2F0aW9uCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gRHVyaW5nIG15IHRlc3RpbmcgSSBzYXcg
dGhlIHNhbWUgZXJyb3IgYW5kIENoZW4ncyAgc29sdXRpb24gY29ycmVjdGVkIGl0IC4KPiA+Pj4+
Pj4gV2hpY2ggY29tYmluYXRpb24geW91IGFyZSB1c2luZyBvbiB5b3VyIHNpZGU/IEkgYW0gdXNp
bmcgUHJhYmhha2FyJ3MKPiA+Pj4+Pj4gc3VnZ2VzdGVkIGVudmlyb25tZW50IGFuZCBjYW4gcmVw
cm9kdWNlIHRoZSBpc3N1ZQo+ID4+Pj4+PiB3aXRoIG9yIHdpdGhvdXQgQ2hlbidzIGNyYXNoa2Vy
bmVsIHN1cHBvcnQgYWJvdmUgNEcgcGF0Y2hzZXQuCj4gPj4+Pj4+Cj4gPj4+Pj4+IEkgYW0gYWxz
byB1c2luZyBhIFRodW5kZXJYMiBwbGF0Zm9ybSB3aXRoIGxhdGVzdCBtYWtlZHVtcGZpbGUgY29k
ZSBhbmQKPiA+Pj4+Pj4ga2V4ZWMtdG9vbHMgKHdpdGggdGhlIHN1Z2dlc3RlZCBwYXRjaAo+ID4+
Pj4+PiA8aHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9waXBlcm1haWwva2V4ZWMvMjAyMC1NYXkvMDI1MTI4Lmh0bWxfXzshIUdxaXZQVmE3QnJp
byFKNmxVaWc1OC1HdzZUS1puRUVZekVlU1UzNlQtMVNxbEIxa0ltVTAweHRYX2xzczVUeC1KYlVt
TEU5VEpDM2ZvWEJMZyQgPikuCj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoYW5rcywKPiA+Pj4+Pj4gQmh1
cGVzaAo+ID4+Pj4+Cj4gPj4+Pj4gSSBkaWQgdGhpcyBhY3Rpdml0eSA1IG1vbnRocyBhZ28gYW5k
IEkgaGF2ZSBtb3ZlZCBvbiB0byBvdGhlciBhY3Rpdml0aWVzLiBNeSBETUEgZmFpbHVyZXMgd2Vy
ZSByZWxhdGVkIHRvIFBDSSBkZXZpY2VzIHRoYXQgY291bGQgbm90IGJlIGVudW1lcmF0ZWQgYmVj
YXVzZSAgbG93LURNQSBzcGFjZSB3YXMgbm90ICBhdmFpbGFibGUgd2hlbiBjcmFzaGtlcm5lbCB3
YXMgbW92ZWQgYWJvdmUgNEc7IEkgZG9u4oCZdCByZWNhbGwgdGhlIGV4YWN0IHBsYXRmb3JtLgo+
ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IEZvciB0aGlzIGZhaWx1cmUgLAo+ID4+Pj4+
Cj4gPj4+Pj4+Pj4gRE1BOiBmYWlsZWQgdG8gYWxsb2NhdGUgMjU2IEtpQiBwb29sIGZvciBhdG9t
aWMKPiA+Pj4+Pj4+PiBjb2hlcmVudCBhbGxvY2F0aW9uCj4gPj4+Pj4KPiA+Pj4+PiBJcyBkdWUg
dG8gOgo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiAzNjE4MDgyYwo+ID4+Pj4+ICgiYXJtNjQgdXNl
IGJvdGggWk9ORV9ETUEgYW5kIFpPTkVfRE1BMzIiKQo+ID4+Pj4+Cj4gPj4+Pj4gV2l0aCB0aGUg
aW50cm9kdWN0aW9uIG9mIFpPTkVfRE1BIHRvIHN1cHBvcnQgdGhlIFJhc3BiZXJyeSBETUEKPiA+
Pj4+PiByZWdpb24gYmVsb3cgMUcsIHRoZSBjcmFzaGtlcm5lbCBpcyBwbGFjZWQgaW4gdGhlIHVw
cGVyIDRHCj4gPj4+Pj4gWk9ORV9ETUFfMzIgcmVnaW9uLiBTaW5jZSB0aGUgY3Jhc2hrZXJuZWwg
ZG9lcyBub3QgaGF2ZSBhY2Nlc3MKPiA+Pj4+PiB0byB0aGUgWk9ORV9ETUEgcmVnaW9uLCBpdCBw
cmludHMgb3V0IGNhbGwgdHJhY2UgZHVyaW5nIGJvb3R1cC4KPiA+Pj4+Pgo+ID4+Pj4+IEl0IGlz
IGR1ZSB0byBoYXZpbmcgdGhpcyBDT05GSUcgaXRlbSAgT04gIDoKPiA+Pj4+Pgo+ID4+Pj4+Cj4g
Pj4+Pj4gQ09ORklHX1pPTkVfRE1BPXkKPiA+Pj4+Pgo+ID4+Pj4+IFR1cm5pbmcgb2ZmIFpPTkVf
RE1BIGZpeGVzIGEgaXNzdWUgYW5kIFJhc3BiZXJyeSBQSSA0IHdpbGwKPiA+Pj4+PiB1c2UgdGhl
IGRldmljZSB0cmVlIHRvIHNwZWNpZnkgbWVtb3J5IGJlbG93IDFHLgo+ID4+Pj4+Cj4gPj4+Pj4K
PiA+Pj4+IERpc2FibGluZyBaT05FX0RNQSBpcyB0ZW1wb3Jhcnkgc29sdXRpb24uICBXZSBtYXkg
bmVlZCBwcm9wZXIgc29sdXRpb24KPiA+Pj4KPiA+Pj4gUGVyaGFwcyB0aGUgUmFzcGJlcnJ5IHBs
YXRmb3JtIGNvbmZpZ3VyYXRpb24gZGVwZW5kZW5jaWVzIG5lZWQgc2VwYXJhdGVkICBmcm9tIOKA
nHNlcnZlciBjbGFzc+KAnSBBcm0gIGVxdWlwbWVudCA/ICBPciBhdXRvLWNvbmZpZ3VyZWQgb24g
Ym9vdCA/ICBDb25zdWx0IGFuIGV4cGVydCA7LSkKPiA+Pj4KPiA+Pj4KPiA+Pj4KPiA+Pj4+PiBJ
IHdvdWxkIGxpa2UgdG8gc2VlIENoZW7igJlzIGZlYXR1cmUgYWRkZWQgLCBwZXJoYXBzIGFzIEVY
UEVSSU1FTlRBTCwgIHNvIHdlIGNhbiBnZXQgc29tZSBjb25maWd1cmF0aW9uIHRlc3RpbmcgZG9u
ZSBvbiBpdC4gICBJdCBjb3JyZWN0cyBoYXZpbmcgYSBETUEgem9uZSBpbiBsb3cgbWVtb3J5IHdo
aWxlIGNyYXNoLWtlcm5lbCBpcyBhYm92ZSA0R0IuICBUaGlzIGhhcyBiZWVuIGdvaW5nIG9uIGZv
ciBhIHllYXIgbm93Lgo+ID4+Pj4gSSB3aWxsIGFsc28gbGlrZSB0aGlzIHBhdGNoIHRvIGJlIGFk
ZGVkIGluIExpbnV4IGFzIGVhcmx5IGFzIHBvc3NpYmxlLgo+ID4+Pj4KPiA+Pj4+IElzc3VlIG1l
bnRpb25lZCBieSBtZSBoYXBwZW5zIHdpdGggb3Igd2l0aG91dCB0aGlzIHBhdGNoLgo+ID4+Pj4K
PiA+Pj4+IFRoaXMgcGF0Y2gtc2V0IGNhbiBjb25zaWRlciBmaXhpbmcgYmVjYXVzZSBpdCB1c2Vz
IGxvdyBtZW1vcnkgZm9yIERNQQo+ID4+Pj4gJiBzd2lvdGxiIG9ubHkuCj4gPj4+PiBXZSBjYW4g
Y29uc2lkZXIgcmVzdHJpY3RpbmcgY3Jhc2hrZXJuZWwgd2l0aGluIHRoZSByZXF1aXJlZCByYW5n
ZSBsaWtlIGJlbG93Cj4gPj4+Pgo+ID4+Pj4gZGlmZiAtLWdpdCBhL2tlcm5lbC9jcmFzaF9jb3Jl
LmMgYi9rZXJuZWwvY3Jhc2hfY29yZS5jCj4gPj4+PiBpbmRleCA3ZjllNWE2ZGM0OGMuLmJkNjdi
OTBkMzViZCAxMDA2NDQKPiA+Pj4+IC0tLSBhL2tlcm5lbC9jcmFzaF9jb3JlLmMKPiA+Pj4+ICsr
KyBiL2tlcm5lbC9jcmFzaF9jb3JlLmMKPiA+Pj4+IEBAIC0zNTQsNyArMzU0LDcgQEAgaW50IF9f
aW5pdCByZXNlcnZlX2NyYXNoa2VybmVsX2xvdyh2b2lkKQo+ID4+Pj4gICAgICAgICAgICAgICAg
ICAgICAgIHJldHVybiAwOwo+ID4+Pj4gICAgICAgfQo+ID4+Pj4KPiA+Pj4+IC0gICAgICAgbG93
X2Jhc2UgPSBtZW1ibG9ja19maW5kX2luX3JhbmdlKDAsIDFVTEwgPDwgMzIsIGxvd19zaXplLCBD
UkFTSF9BTElHTik7Cj4gPj4+PiArICAgICAgIGxvd19iYXNlID0gbWVtYmxvY2tfZmluZF9pbl9y
YW5nZSgwLDB4YzAwMDAwMDAsIGxvd19zaXplLCBDUkFTSF9BTElHTik7Cj4gPj4+PiAgICAgICBp
ZiAoIWxvd19iYXNlKSB7Cj4gPj4+PiAgICAgICAgICAgICAgIHByX2VycigiQ2Fubm90IHJlc2Vy
dmUgJWxkTUIgY3Jhc2hrZXJuZWwgbG93IG1lbW9yeSwKPiA+Pj4+IHBsZWFzZSB0cnkgc21hbGxl
ciBzaXplLlxuIiwKPiA+Pj4+ICAgICAgICAgICAgICAgICAgICAgICh1bnNpZ25lZCBsb25nKShs
b3dfc2l6ZSA+PiAyMCkpOwo+ID4+Pj4KPiA+Pj4+Cj4gPj4+ICAgIEkgc3VzcGVjdCAgMHhjMDAw
MDAwMCAgd291bGQgbmVlZCB0byBiZSBhIENPTkZJRyBpdGVtICBhbmQgbm90IGhhcmQtY29kZWQu
Cj4gPj4+Cj4gPj4gaWYgeW91IGNvbnNpZGVyIHRoaXMgYXMgdmFsaWQgY2hhbmdlLCAgY2FuIHlv
dSBwbGVhc2UgaW5jb3Jwb3JhdGUgYXMKPiA+PiBwYXJ0IG9mIHlvdXIgcGF0Y2gtc2V0Lgo+ID4K
PiA+IEFmdGVyIGNvbW1pdCAxYThlMWNlZjcgKCJhcm02NDogdXNlIGJvdGggWk9ORV9ETUEgYW5k
IFpPTkVfRE1BMzIiKe+8jHRoZSAwLTRHIG1lbW9yeSBpcyBzcGxpdGVkCj4gPiB0byBETUEgW21l
bSAweDAwMDAwMDAwMDAwMDAwMDAtMHgwMDAwMDAwMDNmZmZmZmZmXSBhbmQgRE1BMzIgW21lbSAw
eDAwMDAwMDAwNDAwMDAwMDAtMHgwMDAwMDAwMGZmZmZmZmZmXSBvbiBhcm02NC4KPiA+Cj4gPiBG
cm9tIHRoZSBhYm92ZSBkaXNjdXNzaW9uLCBvbiB5b3VyIHBsYXRmb3JtLCB0aGUgbG93IGNyYXNo
a2VybmVsIGZhbGwgaW4gRE1BMzIgcmVnaW9uLCBidXQgeW91ciBlbnZpcm9ubWVudCBuZWVkcyB0
byBhY2Nlc3MgRE1BCj4gPiByZWdpb24sIHNvIHRoZXJlIGlzIHRoZSBjYWxsIHRyYWNlLgo+ID4K
PiA+IEkgaGF2ZSBhIHF1ZXN0aW9uLCB3aHkgZG8geW91IGNob29zZSAweGMwMDAwMDAwIGhlcmU/
Cj4gPgo+ID4gQmVzaWRlcywgdGhpcyBpcyBjb21tb24gY29kZSwgd2UgYWxzbyBuZWVkIHRvIGNv
bnNpZGVyIGFib3V0IHg4Ni4KPiA+Cj4KPiAgKyBuc2FlbnpqdWxpZW5uZUBzdXNlLmRlCj4KPiAg
IEV4YWN0bHkgLiAgVGhpcyBpcyB3aHkgaXQgbmVlZHMgdG8gYmUgYSBDT05GSUcgb3B0aW9uIGZv
ciAgUmFzcGJlcnJ5IC4uLCAgb3IgZGV2aWNlIHRyZWUgb3B0aW9uLgo+Cj4KPiAgIFdlIGNvdWxk
IHJldmVydCAxYThlMWNlZjcgc2luY2UgaXQgYnJva2UgIEFybSBrZHVtcCB0b28uCgpXZWxsLCB1
bmZvcnR1bmF0ZWx5IHRoZSBwYXRjaCBmb3IgY29tbWl0IDFhOGUxY2VmNzYwMyAoImFybTY0OiB1
c2UKYm90aCBaT05FX0RNQSBhbmQgWk9ORV9ETUEzMiIpIHdhcyBub3QgQ2MnZWQgdG8gdGhlIGtl
eGVjIG1haWxpbmcKbGlzdCwgdGh1cyB3ZSBjb3VsZG4ndCBnZXQgbWFueSBleWVzIG9uIGl0IGZv
ciBhIHRob3JvdWdoIHJldmlldyBmcm9tCmtleGVjL2tkdW1wIHAtby12LgoKQWxzbyB3ZSBoaXN0
b3JpY2FsbHkgbmV2ZXIgaGFkIGRpc3RpbmN0aW9uIGluIGNvbW1vbiBhcmNoIGNvZGUgb24gdGhl
CmJhc2lzIG9mIHRoZSBpbnRlbmRlZCBlbmQgdXNlLWNhc2U6IGVtYmVkZGVkLCBzZXJ2ZXIgb3Ig
YXV0b21vdGl2ZSwgc28KSSBhbSBub3Qgc3VyZSBpbnRyb2R1Y2luZyBhIFJhc3BiZXJyeSBzcGVj
aWZpYyBDT05GSUcgb3B0aW9uIHdvdWxkIGJlCmEgZ29vZCBpZGVhLgoKU28sIHJhdGhlciB0aGFu
IHJldmVydGluZyB0aGUgcGF0Y2gsIHdlIGNhbiBsb29rIGF0IGFkZHJlc3NpbmcgdGhlCnNhbWUg
cHJvcGVybHkgdGhpcyB0aW1lIC0gZXNwZWNpYWxseSBmcm9tIGEga2R1bXAgcC1vLXYuClRoaXMg
aXNzdWUgaGFzIGJlZW4gcmVwb3J0ZWQgYnkgc29tZSBSZWQgSGF0IGFybTY0IHBhcnRuZXJzIHdp
dGgKdXBzdHJlYW0ga2VybmVsIGFsc28gYW5kIGFzIHdlIGhhdmUgbm90aWNlZCBpbiB0aGUgcGFz
dCBhcyB3ZWxsLApoYXJkY29kaW5nIHRoZSBwbGFjZW1lbnQgb2YgdGhlIGNyYXNoa2VybmVsIGJh
c2UgYWRkcmVzcyAodW5sZXNzIHRoZQpiYXNlIGFkZHJlc3MgaXMgc3BlY2lmaWVkIGJ5IGEgY3Jh
c2hrZXJuZWw9WEBZIGxpa2UgYm9vdGFyZ3MpIGlzIGFsc28Kbm90IGEgcG9ydGFibGUgc3VnZ2Vz
dGlvbi4KCkkgYW0gd29ya2luZyBvbiBhIHBvc3NpYmxlIGZpeCBhbmQgd2lsbCBoYXZlIG1vcmUg
dXBkYXRlcyBvbiB0aGUgc2FtZQppbiBhIGRheS1vci10d28uCgpUaGFua3MsCkJodXBlc2gKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWls
aW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
