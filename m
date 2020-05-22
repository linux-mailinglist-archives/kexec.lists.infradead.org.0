Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE6E1DF1CC
	for <lists+kexec@lfdr.de>; Sat, 23 May 2020 00:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ap7oVAKJU9oGs42etPBsOinT6TqR3PLuEnX82slHTgY=; b=Yu8FEjIj1rsGoVQPOOf9IVZFF
	JCfiW09N4LKgHErbEj1HvcIcXThCzxOjqavOE1+ean6ETVp3zkUHvtmn47Ja6DOcL4ePKe4Oekjtt
	+kLlysqT58F6SgB6TLq0jxIfYDILB1f8i2JH3ttTzc1YmoVppliSFt1Js9AEAjv8h4fctjvZB06lK
	wDdRHUimTxQki1vrs+Cn4/xGZlUd77bomPGGZs37UE1bYNQNDzxu4SHjmGbGBrtwap2dYz25AV+10
	BHjD7m7CxLdjWz6jSGSNc2oY5b/8OjOu99Pj6LmSx2JATqo7SCZ08OF+CxBEhYrX64pDJoVIVuZqc
	ngTAK0/5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcG6L-0007nj-0f; Fri, 22 May 2020 22:25:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcG5v-0007ma-8V
 for kexec@lists.infradead.org; Fri, 22 May 2020 22:24:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id 145so5825121pfw.13
 for <kexec@lists.infradead.org>; Fri, 22 May 2020 15:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ztKgl+m2bwsAuJakJyGkItSpIGs0CjL1QD7hydh2kOo=;
 b=Y/Hbo0rnxy6mClHRHFWRhUyxj1FRJT69aFwW3tY3fm3oVu6EODCaV6cZ/pbEy2J4Xp
 5SqSYpicqXhNkkxvb94CERQ10mQiHBfSX/Rac+QDLBTz0rt5MReojcoJ8+Ykua9ccq4e
 eIsrhNUpOJWulxVbDeRZjq1LzV2AlyBxgkCa8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ztKgl+m2bwsAuJakJyGkItSpIGs0CjL1QD7hydh2kOo=;
 b=gv3DidwjcHPArz0vzaXdAHsKpsiX3v0I05e5z+ly52QNYgb1qEm8FfSo0QbPVqGLZp
 +ptZ9yO2DI5hrRJdDBL+IHQJ12IomcA0G4kPt85i7ebm5BTl2KCfrxiykuUqVkdtuE+k
 soOM0oOLpsaJp/wd1acM+mXU2n6jQHvkVCPwtpw/CU4Xz5thaT3sDPnNhYnxHu4NUVGb
 bKBJlayo8yVS20fJ7MaZ7nWI5SXRKj9TRCu5bT6A6Y+rw5vmiMfYyp0U4bnSYILBpuPd
 I33pptFspSxqSc+DEOQonP2/0taHHhqyNQf+UcQ/LSE260GkQsFYe4obCz02CG0s6sdg
 w+eg==
X-Gm-Message-State: AOAM530SxApDvuJ1JekCOSYOcode8NGR23oHG3wUavbm9p6lhWae5BEn
 H0Ivbl/UhI1RNJ57Q9gtr/0Dow==
X-Google-Smtp-Source: ABdhPJzG9AGsDx8lk0R8+8Hml3s7+HeGqJxA11vopeTxMwHpwyVnW8wN1246sbOgiHcMg7eLFkw9kw==
X-Received: by 2002:a63:111e:: with SMTP id g30mr15317955pgl.446.1590186285979; 
 Fri, 22 May 2020 15:24:45 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id l3sm7861934pjb.39.2020.05.22.15.24.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 15:24:44 -0700 (PDT)
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
To: Mimi Zohar <zohar@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Luis Chamberlain <mcgrof@kernel.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
 <1589805462.5111.107.camel@linux.ibm.com>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <7525ca03-def7-dfe2-80a9-25270cb0ae05@broadcom.com>
Date: Fri, 22 May 2020 15:24:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589805462.5111.107.camel@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_152447_301188_C76787BF 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: rafael@kernel.org, dhowells@redhat.com, paul@paul-moore.com,
 nayna@linux.ibm.com, jmorris@namei.org, geert@linux-m68k.org,
 dan.carpenter@oracle.com, keescook@chromium.org, selinux@vger.kernel.org,
 viro@zeniv.linux.org.uk, skhan@linuxfoundation.org, eparis@parisplace.org,
 tglx@linutronix.de, gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, ebiederm@xmission.com, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgTWltaSwKCk9uIDIwMjAtMDUtMTggNTozNyBhLm0uLCBNaW1pIFpvaGFyIHdyb3RlOgo+IEhp
IENocmlzdG9waCwKPgo+IE9uIFN1biwgMjAyMC0wNS0xNyBhdCAyMzoyMiAtMDcwMCwgQ2hyaXN0
b3BoIEhlbGx3aWcgd3JvdGU6Cj4+IE9uIEZyaSwgTWF5IDE1LCAyMDIwIGF0IDA5OjI5OjMzUE0g
KzAwMDAsIEx1aXMgQ2hhbWJlcmxhaW4gd3JvdGU6Cj4+PiBPbiBXZWQsIE1heSAxMywgMjAyMCBh
dCAxMToxNzozNkFNIC0wNzAwLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPj4+PiBDYW4geW91
IGFsc28gbW92ZSBrZXJuZWxfcmVhZF8qIG91dCBvZiBmcy5oPyAgVGhhdCBoZWFkZXIgZ2V0cyBw
dWxsZWQKPj4+PiBpbiBqdXN0IGFib3V0IGV2ZXJ5d2hlcmUgYW5kIGRvZXNuJ3QgcmVhbGx5IG5l
ZWQgZnVuY3Rpb24gbm90IHJlbGF0ZWQKPj4+PiB0byB0aGUgZ2VuZXJhbCBmcyBpbnRlcmZhY2Uu
Cj4+PiBTdXJlLCB3aGVyZSBzaG91bGQgSSBkdW1wIHRoZXNlPwo+PiBNYXliZSBhIG5ldyBsaW51
eC9rZXJuZWxfcmVhZF9maWxlLmg/ICBCb251cyBwb2ludHMgZm9yIGEgc21hbGwgdG9wCj4+IG9m
IHRoZSBmaWxlIGNvbW1lbnQgZXhwbGFpbmluZyB0aGUgcG9pbnQgb2YgdGhlIGludGVyZmFjZSwg
d2hpY2ggSQo+PiBzdGlsbCBkb24ndCBnZXQgOikKPiBJbnN0ZWFkIG9mIHJvbGxpbmcgeW91ciBv
d24gbWV0aG9kIG9mIGhhdmluZyB0aGUga2VybmVsIHJlYWQgYSBmaWxlLAo+IHdoaWNoIHJlcXVp
cmVzIGNhbGwgc3BlY2lmaWMgc2VjdXJpdHkgaG9va3MsIHRoaXMgaW50ZXJmYWNlIHByb3ZpZGVz
IGEKPiBzaW5nbGUgZ2VuZXJpYyBzZXQgb2YgcHJlIGFuZCBwb3N0IHNlY3VyaXR5IGhvb2tzLsKg
wqBUaGUKPiBrZXJuZWxfcmVhZF9maWxlX2lkIGVudW1lcmF0aW9uIHBlcm1pdHMgdGhlIHNlY3Vy
aXR5IGhvb2sgdG8KPiBkaWZmZXJlbnRpYXRlIGJldHdlZW4gY2FsbGVycy4KPgo+IFRvIGNvbXBs
eSB3aXRoIHNlY3VyZSBhbmQgdHJ1c3RlZCBib290IGNvbmNlcHRzLCBhIGZpbGUgY2Fubm90IGJl
Cj4gYWNjZXNzaWJsZSB0byB0aGUgY2FsbGVyIHVudGlsIGFmdGVyIGl0IGhhcyBiZWVuIG1lYXN1
cmVkIGFuZC9vciB0aGUKPiBpbnRlZ3JpdHkgKGhhc2gvc2lnbmF0dXJlKSBhcHByYWlzZWQuCj4K
PiBJbiBzb21lIGNhc2VzLCB0aGUgZmlsZSB3YXMgcHJldmlvdXNseSByZWFkIHR3aWNlLCBmaXJz
dCB0byBtZWFzdXJlCj4gYW5kL29yIGFwcHJhaXNlIHRoZSBmaWxlIGFuZCB0aGVuIHJlYWQgYWdh
aW4gaW50byBhIGJ1ZmZlciBmb3IKPiB1c2UuwqDCoFRoaXMgaW50ZXJmYWNlIHJlYWRzIHRoZSBm
aWxlIGludG8gYSBidWZmZXIgb25jZSwgY2FsbHMgdGhlCj4gZ2VuZXJpYyBwb3N0IHNlY3VyaXR5
IGhvb2ssIGJlZm9yZSBwcm92aWRpbmcgdGhlIGJ1ZmZlciB0byB0aGUgY2FsbGVyLgo+ICDCoChO
b3RlIHVzaW5nIGZpcm13YXJlIHByZS1hbGxvY2F0ZWQgbWVtb3J5IG1pZ2h0IGJlIGFuIGlzc3Vl
LikKPgo+IFBhcnRpYWwgcmVhZGluZyBmaXJtd2FyZSB3aWxsIHJlc3VsdCBpbiBuZWVkaW5nIHRv
IHByZS1yZWFkIHRoZSBlbnRpcmUKPiBmaWxlLCBtb3N0IGxpa2VseSBvbiB0aGUgc2VjdXJpdHkg
cHJlIGhvb2suClRoZSBlbnRpcmUgZmlsZSBtYXkgYmUgdmVyeSBsYXJnZSBhbmQgbm90IGZpdCBp
bnRvIGEgYnVmZmVyLgpIZW5jZSBvbmUgb2YgdGhlIHJlYXNvbnMgZm9yIGEgcGFydGlhbCByZWFk
IG9mIHRoZSBmaWxlLgpGb3Igc2VjdXJpdHkgcHVycG9zZXMsIHlvdSBuZWVkIHRvIGNoYW5nZSB5
b3VyIGNvZGUgdG8gbGltaXQgdGhlIGFtb3VudApvZiBkYXRhIGl0IHJlYWRzIGludG8gYSBidWZm
ZXIgYXQgb25lIHRpbWUgdG8gbm90IGNvbnN1bWUgb3IgcnVuIG91dCBvZiAKbXVjaCBtZW1vcnku
Cj4KPiBNaW1pClNjb3R0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
