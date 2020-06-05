Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A8B1EFFC1
	for <lists+kexec@lfdr.de>; Fri,  5 Jun 2020 20:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dPEeij0lZAYRmOP5SAwqjHnvfMP3DoyqJOCIaxKzs3A=; b=k59ctiKoQuvXpQi/MydjuWSw6
	w8z50UuLJAbRgJqEDZZmM42MkcFZtODjv1u/LbnXBQy79um9r5LC2a6XoDJGtsOELUHGfyuBUVwDm
	ExRZvMl0hXzqjwxmYR7t1Z0sCL0armx56UIgeFLA2GWAfki5cKh2ala76AO9wY9aYS1D1pdcdwzlF
	W9Dg6aNUs0oSR8N0b4pDm5jBQB/NRK/ZW9+LkM7IJsEAdvghf3tmtAInE9IpLFgpFRPBIgj2QvmOQ
	pfV1+xOeFEe6hD/kH+5x4XvYfnjhSjuCm2C8x8bwIznfBgSUR/ba/ORQiv+lxLPnJgzx1PtMdUJo6
	r87w+slTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhGsN-000701-As; Fri, 05 Jun 2020 18:15:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhGsK-0006zE-10
 for kexec@lists.infradead.org; Fri, 05 Jun 2020 18:15:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id 64so5334283pfg.8
 for <kexec@lists.infradead.org>; Fri, 05 Jun 2020 11:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=esmpnZfFmK3cVOEF7B5Xrx0JRzL/dAN0UyhbSUY5XOU=;
 b=cOcYA+tCbSiD62uF7VZPNASE+6dozCHWTwtyvAv86J4CHtUt/BKZxe9Hl8emWeJu32
 NmToqo3tnfYNAFrtfZAe9DVKolOa1e6H2hwmafgv8/uG4iS4t+bJfKetLXM5cH7dUqwK
 3Wi+k5Txc+6B/rmQRnq5aNqkpcI8toqLOgkyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=esmpnZfFmK3cVOEF7B5Xrx0JRzL/dAN0UyhbSUY5XOU=;
 b=iQZVxLirsJCnKG8AIYrrsRB0MitzXbJq2CUQJ9Ps7QhNKbRGDxsmdqd+Vg894UJkuK
 /rs2rQs5nzqsxOTtJ3OHZt4ScQ/Ck+OjunPBUlwR21YU2xZ0X8tw/Q1AMBvapow0N0bU
 8AbqwTYlc/dGYWG1khdB2us783Bl8GgQeDkqxa6zGuGoHWIWxfis7kxSkNtEsoAXHwyN
 nX1dCDmGYcSeLAQmIfuerSnqCPQsx1pHrkK5L9gI6cm42NCU6J6uF1mCt5rk6KguXo1F
 watmZXwgiRGYxorqAVd24WFzXAje6/KYiBwnbDvPsVyY/tv/681H6Wje0P7X2Ue12pyC
 /dag==
X-Gm-Message-State: AOAM531FJsjDF8GCShJSy0ekDQRCQ4k8K4Xqqq1PTr1cj/efxMJ0vWGQ
 ZcEJSWsPTlsoTXa4bl0wFeCt3w==
X-Google-Smtp-Source: ABdhPJx44Y+GjhW2vgNui0lp10q3hv9zSss9PMmRFy4YprMV+idGKYTS6mCLEIhZlMSH2tpAFlibiw==
X-Received: by 2002:a63:9d0a:: with SMTP id i10mr10476176pgd.209.1591380926608; 
 Fri, 05 Jun 2020 11:15:26 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id w24sm286555pfn.11.2020.06.05.11.15.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 11:15:25 -0700 (PDT)
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
To: Mimi Zohar <zohar@linux.ibm.com>, Kees Cook <keescook@chromium.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
 <1589805462.5111.107.camel@linux.ibm.com>
 <7525ca03-def7-dfe2-80a9-25270cb0ae05@broadcom.com>
 <202005221551.5CA1372@keescook>
 <c48a80f5-a09c-6747-3db8-be23a260a0cb@broadcom.com>
 <1590288736.5111.431.camel@linux.ibm.com>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <1c68c0c7-1b0a-dfec-0e50-1b65eedc3dc7@broadcom.com>
Date: Fri, 5 Jun 2020 11:15:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1590288736.5111.431.camel@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_111528_076380_6B43F272 
X-CRM114-Status: GOOD (  26.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: rafael@kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, paul@paul-moore.com,
 nayna@linux.ibm.com, jmorris@namei.org, Christoph Hellwig <hch@infradead.org>,
 geert@linux-m68k.org, dan.carpenter@oracle.com, selinux@vger.kernel.org,
 viro@zeniv.linux.org.uk, skhan@linuxfoundation.org, eparis@parisplace.org,
 tglx@linutronix.de, gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, ebiederm@xmission.com, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgTWltaSwKCk9uIDIwMjAtMDUtMjMgNzo1MiBwLm0uLCBNaW1pIFpvaGFyIHdyb3RlOgo+IE9u
IEZyaSwgMjAyMC0wNS0yMiBhdCAxNjoyNSAtMDcwMCwgU2NvdHQgQnJhbmRlbiB3cm90ZToKPj4g
SGkgS2VlcywKPj4KPj4gT24gMjAyMC0wNS0yMiA0OjA0IHAubS4sIEtlZXMgQ29vayB3cm90ZToK
Pj4+IE9uIEZyaSwgTWF5IDIyLCAyMDIwIGF0IDAzOjI0OjMyUE0gLTA3MDAsIFNjb3R0IEJyYW5k
ZW4gd3JvdGU6Cj4+Pj4gT24gMjAyMC0wNS0xOCA1OjM3IGEubS4sIE1pbWkgWm9oYXIgd3JvdGU6
Cj4+Pj4+IE9uIFN1biwgMjAyMC0wNS0xNyBhdCAyMzoyMiAtMDcwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4+Pj4+PiBPbiBGcmksIE1heSAxNSwgMjAyMCBhdCAwOToyOTozM1BNICswMDAw
LCBMdWlzIENoYW1iZXJsYWluIHdyb3RlOgo+Pj4+Pj4+IE9uIFdlZCwgTWF5IDEzLCAyMDIwIGF0
IDExOjE3OjM2QU0gLTA3MDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+Pj4+Pj4+PiBDYW4g
eW91IGFsc28gbW92ZSBrZXJuZWxfcmVhZF8qIG91dCBvZiBmcy5oPyAgVGhhdCBoZWFkZXIgZ2V0
cyBwdWxsZWQKPj4+Pj4+Pj4gaW4ganVzdCBhYm91dCBldmVyeXdoZXJlIGFuZCBkb2Vzbid0IHJl
YWxseSBuZWVkIGZ1bmN0aW9uIG5vdCByZWxhdGVkCj4+Pj4+Pj4+IHRvIHRoZSBnZW5lcmFsIGZz
IGludGVyZmFjZS4KPj4+Pj4+PiBTdXJlLCB3aGVyZSBzaG91bGQgSSBkdW1wIHRoZXNlPwo+Pj4+
Pj4gTWF5YmUgYSBuZXcgbGludXgva2VybmVsX3JlYWRfZmlsZS5oPyAgQm9udXMgcG9pbnRzIGZv
ciBhIHNtYWxsIHRvcAo+Pj4+Pj4gb2YgdGhlIGZpbGUgY29tbWVudCBleHBsYWluaW5nIHRoZSBw
b2ludCBvZiB0aGUgaW50ZXJmYWNlLCB3aGljaCBJCj4+Pj4+PiBzdGlsbCBkb24ndCBnZXQgOikK
Pj4+Pj4gSW5zdGVhZCBvZiByb2xsaW5nIHlvdXIgb3duIG1ldGhvZCBvZiBoYXZpbmcgdGhlIGtl
cm5lbCByZWFkIGEgZmlsZSwKPj4+Pj4gd2hpY2ggcmVxdWlyZXMgY2FsbCBzcGVjaWZpYyBzZWN1
cml0eSBob29rcywgdGhpcyBpbnRlcmZhY2UgcHJvdmlkZXMgYQo+Pj4+PiBzaW5nbGUgZ2VuZXJp
YyBzZXQgb2YgcHJlIGFuZCBwb3N0IHNlY3VyaXR5IGhvb2tzLsKgwqBUaGUKPj4+Pj4ga2VybmVs
X3JlYWRfZmlsZV9pZCBlbnVtZXJhdGlvbiBwZXJtaXRzIHRoZSBzZWN1cml0eSBob29rIHRvCj4+
Pj4+IGRpZmZlcmVudGlhdGUgYmV0d2VlbiBjYWxsZXJzLgo+Pj4+Pgo+Pj4+PiBUbyBjb21wbHkg
d2l0aCBzZWN1cmUgYW5kIHRydXN0ZWQgYm9vdCBjb25jZXB0cywgYSBmaWxlIGNhbm5vdCBiZQo+
Pj4+PiBhY2Nlc3NpYmxlIHRvIHRoZSBjYWxsZXIgdW50aWwgYWZ0ZXIgaXQgaGFzIGJlZW4gbWVh
c3VyZWQgYW5kL29yIHRoZQo+Pj4+PiBpbnRlZ3JpdHkgKGhhc2gvc2lnbmF0dXJlKSBhcHByYWlz
ZWQuCj4+Pj4+Cj4+Pj4+IEluIHNvbWUgY2FzZXMsIHRoZSBmaWxlIHdhcyBwcmV2aW91c2x5IHJl
YWQgdHdpY2UsIGZpcnN0IHRvIG1lYXN1cmUKPj4+Pj4gYW5kL29yIGFwcHJhaXNlIHRoZSBmaWxl
IGFuZCB0aGVuIHJlYWQgYWdhaW4gaW50byBhIGJ1ZmZlciBmb3IKPj4+Pj4gdXNlLsKgwqBUaGlz
IGludGVyZmFjZSByZWFkcyB0aGUgZmlsZSBpbnRvIGEgYnVmZmVyIG9uY2UsIGNhbGxzIHRoZQo+
Pj4+PiBnZW5lcmljIHBvc3Qgc2VjdXJpdHkgaG9vaywgYmVmb3JlIHByb3ZpZGluZyB0aGUgYnVm
ZmVyIHRvIHRoZSBjYWxsZXIuCj4+Pj4+ICAgIMKgKE5vdGUgdXNpbmcgZmlybXdhcmUgcHJlLWFs
bG9jYXRlZCBtZW1vcnkgbWlnaHQgYmUgYW4gaXNzdWUuKQo+Pj4+Pgo+Pj4+PiBQYXJ0aWFsIHJl
YWRpbmcgZmlybXdhcmUgd2lsbCByZXN1bHQgaW4gbmVlZGluZyB0byBwcmUtcmVhZCB0aGUgZW50
aXJlCj4+Pj4+IGZpbGUsIG1vc3QgbGlrZWx5IG9uIHRoZSBzZWN1cml0eSBwcmUgaG9vay4KPj4+
PiBUaGUgZW50aXJlIGZpbGUgbWF5IGJlIHZlcnkgbGFyZ2UgYW5kIG5vdCBmaXQgaW50byBhIGJ1
ZmZlci4KPj4+PiBIZW5jZSBvbmUgb2YgdGhlIHJlYXNvbnMgZm9yIGEgcGFydGlhbCByZWFkIG9m
IHRoZSBmaWxlLgo+Pj4+IEZvciBzZWN1cml0eSBwdXJwb3NlcywgeW91IG5lZWQgdG8gY2hhbmdl
IHlvdXIgY29kZSB0byBsaW1pdCB0aGUgYW1vdW50Cj4+Pj4gb2YgZGF0YSBpdCByZWFkcyBpbnRv
IGEgYnVmZmVyIGF0IG9uZSB0aW1lIHRvIG5vdCBjb25zdW1lIG9yIHJ1biBvdXQgb2YgbXVjaAo+
Pj4+IG1lbW9yeS4KPj4+IEhtPyBUaGF0J3Mgbm90IGhvdyB3aG9sZS1maWxlIGhhc2hpbmcgd29y
a3MuIDopCj4+PiBUaGVzZSBob29rcyBuZWVkIHRvIGZpbmlzaCB0aGVpciBoYXNoaW5nIGFuZCBw
b2xpY3kgY2hlY2tpbmcgYmVmb3JlIHRoZXkKPj4+IGNhbiBhbGxvdyB0aGUgcmVzdCBvZiB0aGUg
Y29kZSB0byBtb3ZlIGZvcndhcmQuIChUaGF0J3Mgd2h5IGl0J3MgYQo+Pj4gc2VjdXJpdHkgaG9v
ay4pIElmIGtlcm5lbCBtZW1vcnkgdXRpbGl6YXRpb24gaXMgdGhlIHByaW1hcnkgY29uY2VybiwK
Pj4+IHRoZW4gc3VyZSwgdGhpbmdzIGNvdWxkIGJlIHJlYXJyYW5nZWQgdG8gZG8gcGFydGlhbCBy
ZWFkIGFuZCB1cGRhdGUgdGhlCj4+PiBoYXNoIGluY3JlbWVudGFsbHksIGJ1dCB0aGUgZW50aXJl
IGZpbGUgc3RpbGwgbmVlZHMgdG8gYmUgbG9ja2VkLAo+Pj4gZW50aXJlbHkgaGFzaGVkIGJ5IGhv
b2ssIHRoZW4gcmVhZCBieSB0aGUgY2FsbGVyLCB0aGVuIHVubG9ja2VkIGFuZAo+Pj4gcmVsZWFz
ZWQuCj4gRXhhY3RseS4KPgo+Pj4gU28sIGlmIHlvdSB3YW50IHRvIGhhdmUgcGFydGlhbCBmaWxl
IHJlYWRzIHdvcmssIHlvdSdsbCBuZWVkIHRvCj4+PiByZWFyY2hpdGVjdCB0aGUgd2F5IHRoaXMg
d29ya3MgdG8gYXZvaWQgcmVncmVzc2luZyB0aGUgc2VjdXJpdHkgY292ZXJhZ2UKPj4+IG9mIHRo
ZXNlIG9wZXJhdGlvbnMuCj4+IEkgYW0gbm90IGZhbWlsaWFyIHdpdGggaG93IHRoZSBzZWN1cml0
eSBoYW5kbGluZyBjb2RlIHdvcmtzIGF0IGFsbC4KPj4gSXMgdGhlIHNhbWUgc2VjdXJpdHkgY2hl
Y2sgcnVuIG9uIGZpbGVzIG9wZW5lZCBmcm9tIHVzZXIgc3BhY2U/Cj4+IEEgZmlsZSBjb3VsZCBi
ZSBodWdlLgo+Pgo+PiBJZiBpdCBhc3N1bWVzIHRoZXJlIGlzIHRoZXJlIGlzIGVub3VnaCBtZW1v
cnkgYXZhaWxhYmxlIHRvIHJlYWQgdGhlCj4+IGVudGlyZSBmaWxlIGludG8ga2VybmVsIHNwYWNl
IHRoZW4gdGhlIGltcHJvdmVtZW50IGJlbG93IGNhbiBiZSBsZWZ0IGFzCj4+IGEgbWVtb3J5IG9w
dGltaXphdGlvbiB0byBiZSBkb25lIGluIGFuIGluZGVwZW5kZW50IChvciBmdXR1cmUpIHBhdGNo
IHNlcmllcy4KPiBUaGVyZSBhcmUgdHdvIHNlY3VyaXR5IGhvb2tzIC0gc2VjdXJpdHlfa2VybmVs
X3JlYWRfZmlsZSgpLAo+IHNlY3VyaXR5X2tlcm5lbF9wb3N0X3JlYWRfZmlsZSAtIGluIGtlcm5l
bF9yZWFkX2ZpbGUoKS4gwqBUaGUgZmlyc3QKPiBob29rIGlzIGNhbGxlZCBiZWZvcmUgdGhlIGZp
bGUgaXMgcmVhZCBpbnRvIGEgYnVmZmVyLCB3aGlsZSB0aGUgc2Vjb25kCj4gaG9vayBpcyBjYWxs
ZWQgYWZ0ZXJ3YXJkcy4KPgo+IEZvciBwYXJ0aWFsIHJlYWRzLCBtZWFzdXJpbmcgdGhlIGZpcm13
YXJlIGFuZCB2ZXJpZnlpbmcgdGhlIGZpcm13YXJlJ3MKPiBzaWduYXR1cmUgd2lsbCBuZWVkIHRv
IGJlIGRvbmUgb24gdGhlIHNlY3VyaXR5X2tlcm5lbF9yZWFkX2ZpbGUoKQo+IGhvb2suCj4KPj4+
IFNvLCBwcm9iYWJseSwgdGhlIGNvZGUgd2lsbCBsb29rIHNvbWV0aGluZyBsaWtlOgo+Pj4KPj4+
Cj4+PiBmaWxlID0ga2VybmVsX29wZW5fZmlsZV9mb3JfcmVhZGluZyguLi4pCj4+PiAJZmlsZSA9
IG9wZW4uLi4KPj4+IAlkaXNhbGxvd193cml0ZXMoZmlsZSk7Cj4+PiAJd2hpbGUgKHByb2Nlc3Nl
ZCA8IHNpemUtb2YtZmlsZSkgewo+Pj4gCQlidWYgPSByZWFkKGZpbGUsIHNpemUuLi4pCj4+PiAJ
CXNlY3VyaXR5X2ZpbGVfcmVhZF9wYXJ0aWFsKGJ1ZikKPj4+IAl9Cj4+PiAJcmV0ID0gc2VjdXJp
dHlfZmlsZV9yZWFkX2ZpbmlzaGVkKGZpbGUpOwo+Pj4gCWlmIChyZXQgPCAwKSB7Cj4+PiAJCWFs
bG93X3dyaXRlcyhmaWxlKTsKPj4+IAkJcmV0dXJuIFBUUl9FUlIocmV0KTsKPj4+IAl9Cj4+PiAJ
cmV0dXJuIGZpbGU7Cj4+Pgo+Pj4gd2hpbGUgKHByb2Nlc3NlZCA8IHNpemUtb2YtZmlsZSkgewo+
Pj4gCWJ1ZiA9IHJlYWQoZmlsZSwgc2l6ZS4uLikKPj4+IAlmaXJtd2FyZV9zZW5kX3BhcnRpYWwo
YnVmKTsKPj4+IH0KPj4+Cj4+PiBrZXJuZWxfY2xvc2VfZmlsZV9mb3JfcmVhZGluZyhmaWxlKQo+
Pj4gCWFsbG93X3dyaXRlcyhmaWxlKTsKPiBSaWdodCwgdGhlIGltYV9maWxlX21tYXAoKSwgaW1h
X2Jwcm1fY2hlY2soKSwgYW5kIGltYV9maWxlX2NoZWNrKCkKPiBob29rcyBjYWxsIHByb2Nlc3Nf
bWVhc3VyZW1lbnQoKSB0byBkbyB0aGlzLiDCoGltYV9wb3N0X3JlYWRfZmlsZSgpCj4gcGFzc2Vz
IGEgYnVmZmVyIHRvIHByb2Nlc3NfbWVhc3VyZW1lbnQoKSBpbnN0ZWFkLgo+Cj4gU2NvdHQsIHRo
ZSBjaGFuZ2Ugc2hvdWxkIGJlIHN0cmFpZ2h0IGZvcndhcmQuIMKgVGhlIGFkZGl0aW9uYWwgcGF0
Y2gKPiBuZWVkcyB0bzoKPiAtIGRlZmluZSBhIG5ldyBrZXJuZWxfcmVhZF9maWxlX2lkIGVudW1l
cmF0aW9uLCBsaWtlCj4gRklSTVdBUkVfUEFSVElBTF9SRUFELgo+IC0gQ3VycmVudGx5IGltYV9y
ZWFkX2ZpbGUoKSBoYXMgYSBjb21tZW50IGFib3V0IHByZS1hbGxvY2F0ZWQgZmlybXdhcmUKPiBi
dWZmZXJzLiDCoFVwZGF0ZSBpbWFfcmVhZF9maWxlKCkgdG8gY2FsbCBwcm9jZXNzX21lYXN1cmVt
ZW50KCkgZm9yIHRoZQo+IG5ldyBlbnVtZXJhdGlvbiBGSVJNV0FSRV9QQVJUSUFMX1JFQUQgYW5k
IHVwZGF0ZSBpbWFfcG9zdF9yZWFkX2ZpbGUoKQo+IHRvIHJldHVybiBpbW1lZGlhdGVseS4KU2hv
dWxkIHRoaXMgYmUgd2hhdCBpcyBpbiBpbWFfcmVhZF9maWxlPwp7CiDCoMKgwqAgZW51bSBpbWFf
aG9va3MgZnVuYzsKIMKgwqDCoCB1MzIgc2VjaWQ7CgogwqDCoMKgIGlmIChyZWFkX2lkICE9IFJF
QURJTkdfRklSTVdBUkVfUEFSVElBTF9SRUFEKQogwqDCoMKgIMKgwqDCoCByZXR1cm4gMDsKCiDC
oMKgwqAgaWYgKCFmaWxlKSB7IC8qIHNob3VsZCBuZXZlciBoYXBwZW4gKi8KIMKgwqDCoCDCoMKg
wqAgaWYgKGltYV9hcHByYWlzZSAmIElNQV9BUFBSQUlTRV9FTkZPUkNFKQogwqDCoMKgIMKgwqDC
oCDCoMKgwqAgcmV0dXJuIC1FQUNDRVM7CiDCoMKgwqAgwqDCoMKgIHJldHVybiAwOwogwqDCoMKg
IH0KCiDCoMKgwqAgc2VjdXJpdHlfdGFza19nZXRzZWNpZChjdXJyZW50LCAmc2VjaWQpOwogwqDC
oMKgIHJldHVybiBwcm9jZXNzX21lYXN1cmVtZW50KGZpbGUsIGN1cnJlbnRfY3JlZCgpLCBzZWNp
ZCwgTlVMTCwKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgIDAsIE1BWV9SRUFELCBG
SUxFX0NIRUNLKTsKfQo+Cj4gVGhlIGJ1aWx0LWluIElNQSBtZWFzdXJlbWVudCBwb2xpY3kgY29u
dGFpbnMgYSBydWxlIHRvIG1lYXN1cmUKPiBmaXJtd2FyZS4gwqBUaGUgcG9saWN5IGNhbiBiZSBz
cGVjaWZpZWQgb24gdGhlIGJvb3QgY29tbWFuZCBsaW5lIGJ5Cj4gc3BlY2lmeWluZyAiaW1hX3Bv
bGljeT10Y2IiLiDCoEFmdGVyIHJlYWRpbmcgdGhlIGZpcm13YXJlLCB0aGUgZmlybXdhcmUKPiBt
ZWFzdXJlbWVudCBzaG91bGQgYmUgaW4gPHNlY3VyaXR5ZnM+L2ltYS9hc2NpaV9ydW50aW1lX21l
YXN1cmVtZW50cy4KPgo+IHRoYW5rcywKPgo+IE1pbWkKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2tleGVjCg==
