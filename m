Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE7F1DF2F3
	for <lists+kexec@lfdr.de>; Sat, 23 May 2020 01:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SsUaXpPyCrAkEv5wXWlW0yLvOBhxdTedSWl20X0ZoAk=; b=HSLngyl8hXAwhxuFmErJAyuDA
	fvGW24U5Kh6zLSp4nrEYtcGcpjRgb/Vzp0PDLA+nk65GBc/HrJG5FHVPB+vwppy2XMrSWPdWS78BQ
	CZbawyjgCpphh5CQ4UEIAiggaMyuXfrmUv6eLHua13uQSr1ykXrbA9tHZpWM9xfkZjGsgTRkncJXI
	8HuYkTI42XueEmL68GgsEU4sdJP3aXpcTAfrcPNmpTQehMcK4W+lyJ4wxA8o0Ni4iSY//JhTgMT6s
	d79GqqWYHuVobcd0DteEbPmDvWqyFEylIoarBNBd0ogn3zzjQuSipF7HgZKFKRBeoOU1eAOMIvH13
	aCximXgtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcH2W-0007MQ-CH; Fri, 22 May 2020 23:25:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcH2T-0007LV-1S
 for kexec@lists.infradead.org; Fri, 22 May 2020 23:25:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id s10so5723129pgm.0
 for <kexec@lists.infradead.org>; Fri, 22 May 2020 16:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=xcdARewyTG4POyZ7ltQhfJJu9Qv+Bxm+E+lkKjlpIsE=;
 b=fTK4N1uv4Kn/dR2zzPbD0jHTR52W93tW49eGy+Fa0Hl+4Be6712kZ/QI6oxwFpFI/a
 ZHU1PWctlZrqE3qr5XCDpuTkl3C2l7HVsfv5S3tv6i6eNIa81bBVA7dSqbl/5Pq6FUZs
 ABEWWzVogKKhogjSPk2sGmAiiVj+evSbq4uJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=xcdARewyTG4POyZ7ltQhfJJu9Qv+Bxm+E+lkKjlpIsE=;
 b=M1Sszy5WIOfqXHCAuWURr5e68YIOj1023/ikT99+tzVsNn/8lhnNJjIoHKezBPZw92
 iuvP/PmaJvbc7V30tZ5WVo4HyikQUP7uP4ISXxtveSp+fLQDuWIoZX+LDzO+GELOAOti
 CsEarUyGt0jDcYH/mB0CoWWqFTyMTNPi45Ob676SIFUlo98pRC2+otx+WrgE6hZNUAOt
 KxM2ehFXAf8W5BtZPrs2mXUpaIo2jzoi6UMrGn81v1+jfdvycQgvUGdzPlXTKiztB9x0
 FxX4wFfCMGicnPOfxM8QXidMZgQ7xV5XGwszyV1dfMg9mOvdC1ozmeJtwgii1Co+oMM6
 0uNg==
X-Gm-Message-State: AOAM532sq/SaNEixOQDdbeluMVysClz1yjgiTRkDeFm8wkmPLz9JK6D9
 /qs6QN3Dz9oiTRY8lmGsCV2M/g==
X-Google-Smtp-Source: ABdhPJxYA3M7TqBzRS04SzG465as6Jpo33/yu9zFOYOedvseWiYUZylkj5NdgSLEDNI/UVu5rIrHaw==
X-Received: by 2002:a62:2f45:: with SMTP id v66mr6455014pfv.45.1590189916382; 
 Fri, 22 May 2020 16:25:16 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id m12sm7637602pjs.41.2020.05.22.16.25.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 16:25:15 -0700 (PDT)
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
To: Kees Cook <keescook@chromium.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
 <1589805462.5111.107.camel@linux.ibm.com>
 <7525ca03-def7-dfe2-80a9-25270cb0ae05@broadcom.com>
 <202005221551.5CA1372@keescook>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <c48a80f5-a09c-6747-3db8-be23a260a0cb@broadcom.com>
Date: Fri, 22 May 2020 16:25:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <202005221551.5CA1372@keescook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_162517_081796_6EFEB706 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rafael@kernel.org, Mimi Zohar <zohar@linux.ibm.com>, dhowells@redhat.com,
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

SGkgS2VlcywKCk9uIDIwMjAtMDUtMjIgNDowNCBwLm0uLCBLZWVzIENvb2sgd3JvdGU6Cj4gT24g
RnJpLCBNYXkgMjIsIDIwMjAgYXQgMDM6MjQ6MzJQTSAtMDcwMCwgU2NvdHQgQnJhbmRlbiB3cm90
ZToKPj4gT24gMjAyMC0wNS0xOCA1OjM3IGEubS4sIE1pbWkgWm9oYXIgd3JvdGU6Cj4+PiBPbiBT
dW4sIDIwMjAtMDUtMTcgYXQgMjM6MjIgLTA3MDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+
Pj4+IE9uIEZyaSwgTWF5IDE1LCAyMDIwIGF0IDA5OjI5OjMzUE0gKzAwMDAsIEx1aXMgQ2hhbWJl
cmxhaW4gd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgTWF5IDEzLCAyMDIwIGF0IDExOjE3OjM2QU0gLTA3
MDAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+Pj4+Pj4gQ2FuIHlvdSBhbHNvIG1vdmUga2Vy
bmVsX3JlYWRfKiBvdXQgb2YgZnMuaD8gIFRoYXQgaGVhZGVyIGdldHMgcHVsbGVkCj4+Pj4+PiBp
biBqdXN0IGFib3V0IGV2ZXJ5d2hlcmUgYW5kIGRvZXNuJ3QgcmVhbGx5IG5lZWQgZnVuY3Rpb24g
bm90IHJlbGF0ZWQKPj4+Pj4+IHRvIHRoZSBnZW5lcmFsIGZzIGludGVyZmFjZS4KPj4+Pj4gU3Vy
ZSwgd2hlcmUgc2hvdWxkIEkgZHVtcCB0aGVzZT8KPj4+PiBNYXliZSBhIG5ldyBsaW51eC9rZXJu
ZWxfcmVhZF9maWxlLmg/ICBCb251cyBwb2ludHMgZm9yIGEgc21hbGwgdG9wCj4+Pj4gb2YgdGhl
IGZpbGUgY29tbWVudCBleHBsYWluaW5nIHRoZSBwb2ludCBvZiB0aGUgaW50ZXJmYWNlLCB3aGlj
aCBJCj4+Pj4gc3RpbGwgZG9uJ3QgZ2V0IDopCj4+PiBJbnN0ZWFkIG9mIHJvbGxpbmcgeW91ciBv
d24gbWV0aG9kIG9mIGhhdmluZyB0aGUga2VybmVsIHJlYWQgYSBmaWxlLAo+Pj4gd2hpY2ggcmVx
dWlyZXMgY2FsbCBzcGVjaWZpYyBzZWN1cml0eSBob29rcywgdGhpcyBpbnRlcmZhY2UgcHJvdmlk
ZXMgYQo+Pj4gc2luZ2xlIGdlbmVyaWMgc2V0IG9mIHByZSBhbmQgcG9zdCBzZWN1cml0eSBob29r
cy7CoMKgVGhlCj4+PiBrZXJuZWxfcmVhZF9maWxlX2lkIGVudW1lcmF0aW9uIHBlcm1pdHMgdGhl
IHNlY3VyaXR5IGhvb2sgdG8KPj4+IGRpZmZlcmVudGlhdGUgYmV0d2VlbiBjYWxsZXJzLgo+Pj4K
Pj4+IFRvIGNvbXBseSB3aXRoIHNlY3VyZSBhbmQgdHJ1c3RlZCBib290IGNvbmNlcHRzLCBhIGZp
bGUgY2Fubm90IGJlCj4+PiBhY2Nlc3NpYmxlIHRvIHRoZSBjYWxsZXIgdW50aWwgYWZ0ZXIgaXQg
aGFzIGJlZW4gbWVhc3VyZWQgYW5kL29yIHRoZQo+Pj4gaW50ZWdyaXR5IChoYXNoL3NpZ25hdHVy
ZSkgYXBwcmFpc2VkLgo+Pj4KPj4+IEluIHNvbWUgY2FzZXMsIHRoZSBmaWxlIHdhcyBwcmV2aW91
c2x5IHJlYWQgdHdpY2UsIGZpcnN0IHRvIG1lYXN1cmUKPj4+IGFuZC9vciBhcHByYWlzZSB0aGUg
ZmlsZSBhbmQgdGhlbiByZWFkIGFnYWluIGludG8gYSBidWZmZXIgZm9yCj4+PiB1c2UuwqDCoFRo
aXMgaW50ZXJmYWNlIHJlYWRzIHRoZSBmaWxlIGludG8gYSBidWZmZXIgb25jZSwgY2FsbHMgdGhl
Cj4+PiBnZW5lcmljIHBvc3Qgc2VjdXJpdHkgaG9vaywgYmVmb3JlIHByb3ZpZGluZyB0aGUgYnVm
ZmVyIHRvIHRoZSBjYWxsZXIuCj4+PiAgIMKgKE5vdGUgdXNpbmcgZmlybXdhcmUgcHJlLWFsbG9j
YXRlZCBtZW1vcnkgbWlnaHQgYmUgYW4gaXNzdWUuKQo+Pj4KPj4+IFBhcnRpYWwgcmVhZGluZyBm
aXJtd2FyZSB3aWxsIHJlc3VsdCBpbiBuZWVkaW5nIHRvIHByZS1yZWFkIHRoZSBlbnRpcmUKPj4+
IGZpbGUsIG1vc3QgbGlrZWx5IG9uIHRoZSBzZWN1cml0eSBwcmUgaG9vay4KPj4gVGhlIGVudGly
ZSBmaWxlIG1heSBiZSB2ZXJ5IGxhcmdlIGFuZCBub3QgZml0IGludG8gYSBidWZmZXIuCj4+IEhl
bmNlIG9uZSBvZiB0aGUgcmVhc29ucyBmb3IgYSBwYXJ0aWFsIHJlYWQgb2YgdGhlIGZpbGUuCj4+
IEZvciBzZWN1cml0eSBwdXJwb3NlcywgeW91IG5lZWQgdG8gY2hhbmdlIHlvdXIgY29kZSB0byBs
aW1pdCB0aGUgYW1vdW50Cj4+IG9mIGRhdGEgaXQgcmVhZHMgaW50byBhIGJ1ZmZlciBhdCBvbmUg
dGltZSB0byBub3QgY29uc3VtZSBvciBydW4gb3V0IG9mIG11Y2gKPj4gbWVtb3J5Lgo+IEhtPyBU
aGF0J3Mgbm90IGhvdyB3aG9sZS1maWxlIGhhc2hpbmcgd29ya3MuIDopCgo+Cj4gVGhlc2UgaG9v
a3MgbmVlZCB0byBmaW5pc2ggdGhlaXIgaGFzaGluZyBhbmQgcG9saWN5IGNoZWNraW5nIGJlZm9y
ZSB0aGV5Cj4gY2FuIGFsbG93IHRoZSByZXN0IG9mIHRoZSBjb2RlIHRvIG1vdmUgZm9yd2FyZC4g
KFRoYXQncyB3aHkgaXQncyBhCj4gc2VjdXJpdHkgaG9vay4pIElmIGtlcm5lbCBtZW1vcnkgdXRp
bGl6YXRpb24gaXMgdGhlIHByaW1hcnkgY29uY2VybiwKPiB0aGVuIHN1cmUsIHRoaW5ncyBjb3Vs
ZCBiZSByZWFycmFuZ2VkIHRvIGRvIHBhcnRpYWwgcmVhZCBhbmQgdXBkYXRlIHRoZQo+IGhhc2gg
aW5jcmVtZW50YWxseSwgYnV0IHRoZSBlbnRpcmUgZmlsZSBzdGlsbCBuZWVkcyB0byBiZSBsb2Nr
ZWQsCj4gZW50aXJlbHkgaGFzaGVkIGJ5IGhvb2ssIHRoZW4gcmVhZCBieSB0aGUgY2FsbGVyLCB0
aGVuIHVubG9ja2VkIGFuZAo+IHJlbGVhc2VkLgo+Cj4gU28sIGlmIHlvdSB3YW50IHRvIGhhdmUg
cGFydGlhbCBmaWxlIHJlYWRzIHdvcmssIHlvdSdsbCBuZWVkIHRvCj4gcmVhcmNoaXRlY3QgdGhl
IHdheSB0aGlzIHdvcmtzIHRvIGF2b2lkIHJlZ3Jlc3NpbmcgdGhlIHNlY3VyaXR5IGNvdmVyYWdl
Cj4gb2YgdGhlc2Ugb3BlcmF0aW9ucy4KSSBhbSBub3QgZmFtaWxpYXIgd2l0aCBob3cgdGhlIHNl
Y3VyaXR5IGhhbmRsaW5nIGNvZGUgd29ya3MgYXQgYWxsLgpJcyB0aGUgc2FtZSBzZWN1cml0eSBj
aGVjayBydW4gb24gZmlsZXMgb3BlbmVkIGZyb20gdXNlciBzcGFjZT8KQSBmaWxlIGNvdWxkIGJl
IGh1Z2UuCgpJZiBpdCBhc3N1bWVzIHRoZXJlIGlzIHRoZXJlIGlzIGVub3VnaCBtZW1vcnkgYXZh
aWxhYmxlIHRvIHJlYWQgdGhlIAplbnRpcmUgZmlsZSBpbnRvIGtlcm5lbCBzcGFjZQp0aGVuIHRo
ZSBpbXByb3ZlbWVudCBiZWxvdyBjYW4gYmUgbGVmdCBhcyBhIG1lbW9yeSBvcHRpbWl6YXRpb24g
dG8gYmUgCmRvbmUgaW4KYW4gaW5kZXBlbmRlbnQgKG9yIGZ1dHVyZSkgcGF0Y2ggc2VyaWVzLgoK
PiBTbywgcHJvYmFibHksIHRoZSBjb2RlIHdpbGwgbG9vayBzb21ldGhpbmcgbGlrZToKPgo+Cj4g
ZmlsZSA9IGtlcm5lbF9vcGVuX2ZpbGVfZm9yX3JlYWRpbmcoLi4uKQo+IAlmaWxlID0gb3Blbi4u
Lgo+IAlkaXNhbGxvd193cml0ZXMoZmlsZSk7Cj4gCXdoaWxlIChwcm9jZXNzZWQgPCBzaXplLW9m
LWZpbGUpIHsKPiAJCWJ1ZiA9IHJlYWQoZmlsZSwgc2l6ZS4uLikKPiAJCXNlY3VyaXR5X2ZpbGVf
cmVhZF9wYXJ0aWFsKGJ1ZikKPiAJfQo+IAlyZXQgPSBzZWN1cml0eV9maWxlX3JlYWRfZmluaXNo
ZWQoZmlsZSk7Cj4gCWlmIChyZXQgPCAwKSB7Cj4gCQlhbGxvd193cml0ZXMoZmlsZSk7Cj4gCQly
ZXR1cm4gUFRSX0VSUihyZXQpOwo+IAl9Cj4gCXJldHVybiBmaWxlOwo+Cj4gd2hpbGUgKHByb2Nl
c3NlZCA8IHNpemUtb2YtZmlsZSkgewo+IAlidWYgPSByZWFkKGZpbGUsIHNpemUuLi4pCj4gCWZp
cm13YXJlX3NlbmRfcGFydGlhbChidWYpOwo+IH0KPgo+IGtlcm5lbF9jbG9zZV9maWxlX2Zvcl9y
ZWFkaW5nKGZpbGUpCj4gCWFsbG93X3dyaXRlcyhmaWxlKTsKPgo+CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVj
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9rZXhlYwo=
