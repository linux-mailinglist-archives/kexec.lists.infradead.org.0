Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5877F1CC663
	for <lists+kexec@lfdr.de>; Sun, 10 May 2020 06:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa1TG38bVvcQFdBfW4FyvjXGW6s3MUMjdcUxo5B+vvE=; b=c7rTgZsQ/gm2ys
	PMnN+hfRxFLNRdqn84jjfZr/y/rq1RKVOU/eSplhDwHfU3RBaI/Yyxq8v7ki7AcrgcOGpiSqNC4Yt
	j2Ann9MPjlvVgb0WksadEkuNeETra0D1dSOSQXmipS7Hs5ApOndamlFJM//o3fPtR+BlV+J3Jt0AU
	VHYOZxnAOzIJJwvrbKd/+DkGGCajYr5BD4Fcb1BVbdoE74OsSMxVEXDgfZjmlzYLddjics7b92Mih
	Y/obMOYOL8YD6t/dsYlZNmCILtE9FKoAV4HxvIB4VR8Iv67Tq/fuPBvePwkW2MnGXbQD58iQdOfwL
	KH/Djowi95hUExoTeqSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXdIO-0000Yh-L7; Sun, 10 May 2020 04:10:32 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXdIL-0000YL-Cq; Sun, 10 May 2020 04:10:29 +0000
Subject: Re: [PATCH v3] kernel: add panic_on_taint
To: Baoquan He <bhe@redhat.com>, Rafael Aquini <aquini@redhat.com>
References: <20200509135737.622299-1-aquini@redhat.com>
 <20200510025921.GA10165@MiWiFi-R3L-srv>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <acab7971-7522-3511-c976-e0237ceda4d0@infradead.org>
Date: Sat, 9 May 2020 21:10:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200510025921.GA10165@MiWiFi-R3L-srv>
Content-Language: en-US
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
Cc: bunk@kernel.org, jeffm@suse.com, tytso@mit.edu, keescook@chromium.org,
 jeyu@suse.de, corbet@lwn.net, tiwai@suse.de, torvalds@linux-foundation.org,
 jikos@kernel.org, linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, AnDavis@suse.com, mcgrof@kernel.org, cai@lca.pw,
 gregkh@linuxfoundation.org, linux-fsdevel@vger.kernel.org, rpalethorpe@suse.de,
 akpm@linux-foundation.org, labbott@redhat.com, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 5/9/20 7:59 PM, Baoquan He wrote:
> Read admin-guide/tainted-kernels.rst, but still do not get what 'G' means.

I interpret 'G' as GPL (strictly it means that no proprietary module has
been loaded).  But I don't see why TAINT_PROPRIETARY_MODULE is the only
taint flag that has a non-blank c_false character.  It could just be blank
also AFAICT.  Then the 'G' would not be there to confuse us.  :)

-- 
~Randy


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
