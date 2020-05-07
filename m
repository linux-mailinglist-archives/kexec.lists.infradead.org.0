Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A01C9856
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 19:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6OeBFv9CtI6JsNEwGAyrVTtKa+TANawWDCady9db9s=; b=pSqjU5s0f+lpu/
	DkmCBN/Chya+fAxpawPU4GfrBRyqFQJTXILoCXwkr0sbOmATo53j08efyXOALbZcOUdTIvj8rKIOK
	4RC/mbsMWF1zLu2kbI1dlcf07M7vg5/NI6tJ84GKjHi71u2GopJYh0nli8jBh676PxQjsm766ZBeS
	6G5gmgsSakA7BRzYJ7/r4WeKoyHAGq6rT184mVinEpWOstyziCufhVDu+lCKA0DHm2OqCz0BFAfSR
	TaThHDw/5hiboqAIMWDHdN4h5V0s0XaMpLs53qM6yY9qjJZlJ84C630opKCEnFvKD+V7OByX9inZq
	lk4YX960pW7sBrEQX+nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkgM-0003aM-OH; Thu, 07 May 2020 17:51:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkgJ-0003Zx-G0
 for kexec@lists.infradead.org; Thu, 07 May 2020 17:51:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id 18so3350196pfx.6
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 10:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6nsicqHKSLR08n1R+IXV8HH61Ez1sWv3K0CdRq6A4rw=;
 b=RrVQQPSNEjwXxIpxHMpeXgb/6SFvXrlHUGtWgKRpooc/AMiY7CyxeneurgMVsZo8T4
 rLft7rAMLxvk81jduk4p1OvVy7Ds+6FdlCoFjF4obUTG7NUio/81dR/EkXL7urAWPtiF
 OM+VRspJQyc+7FPnIWrzi3cHthVRonjBAFiOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6nsicqHKSLR08n1R+IXV8HH61Ez1sWv3K0CdRq6A4rw=;
 b=I0vHhhll/uvsvirb+kiScVmwSM/DWSvXKDZ3tdv4d4anIQSvCHt+mnB6NWn+bBMCiR
 neiuK5kCJY9xsGuJdVmu+sdF+DuVSkjSHEO4FcUbWWvLev/y+6tVpiCGBcgFKZi+xEkb
 qN1dqa3fzezML0A94uz6QzoE8rqywGzSv4tnN6TFFQBY3Wr+QZbxJxpRSixBEQ1QzWw0
 xwy2ODkpE4UINKuT1kx8aS3klF6izrKmC2EZJIoLDYEk++LfdNFkIzDvBZWvw3oVm5wm
 5gg/Wal6NoxQT48zzXRP4EWx3nYhwrq0yehPAU6Ng6w1mO0MffxaGCo6jJxTjSAl8vUh
 Zxnw==
X-Gm-Message-State: AGi0PuaGnIvJGT4JKgRD1tunSeNXM5KvnPZIkOgItI45JWauqdJLVygY
 5Q4CJS66Ng0ZBMf/Op9IX5tsZw==
X-Google-Smtp-Source: APiQypJrg795r4p3dlKKs5p5tJSGEr5TXh4b/RDvjDLBZG4ZsffQBKKTjPJNE6l8z2s2P5ajyKYDOw==
X-Received: by 2002:aa7:9dc7:: with SMTP id g7mr15195629pfq.291.1588873894492; 
 Thu, 07 May 2020 10:51:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g25sm5314837pfo.150.2020.05.07.10.51.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 10:51:33 -0700 (PDT)
Date: Thu, 7 May 2020 10:51:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Anthony Yznaga <anthony.yznaga@oracle.com>
Subject: Re: [RFC 21/43] x86/KASLR: PKRAM: support physical kaslr
Message-ID: <202005071049.2D0939137D@keescook>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
 <1588812129-8596-22-git-send-email-anthony.yznaga@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588812129-8596-22-git-send-email-anthony.yznaga@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_105135_896912_6ADA9971 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: rafael.j.wysocki@intel.com, linux-doc@vger.kernel.org,
 gustavo@embeddedor.com, peterz@infradead.org, kexec@lists.infradead.org,
 paul.c.lai@intel.com, dave.hansen@linux.intel.com, zhenzhong.duan@oracle.com,
 lei.l.li@intel.com, linux-mm@kvack.org, nivedita@alum.mit.edu,
 ziqian.lzq@antfin.com, hpa@zytor.com, ardb@kernel.org, ashok.raj@intel.com,
 bhe@redhat.com, corbet@lwn.net, daniel.kiper@oracle.com, x86@kernel.org,
 hughd@google.com, willy@infradead.org, rppt@linux.ibm.com, mhocko@kernel.org,
 mingo@redhat.com, vdavydov.dev@gmail.com, ying.huang@intel.com,
 Thomas.Lendacky@amd.com, kevin.tian@intel.com, jroedel@suse.de,
 dan.j.williams@intel.com, bp@alien8.de, zhiyuan.lv@intel.com, luto@kernel.org,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com, dima@golovin.in,
 yang.shi@linux.alibaba.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, guro@fb.com, minchan@kernel.org,
 ebiederm@xmission.com, jason.zeng@intel.com, hannes@cmpxchg.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org, masahiroy@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 05:41:47PM -0700, Anthony Yznaga wrote:
> Avoid regions of memory that contain preserved pages when computing
> slots used to select where to put the decompressed kernel.

This is changing the slot-walking code instead of updating
mem_avoid_overlap() -- that's where the check for a "reserved" memory
area should live.

For example, this is how both mem_avoid_memmap() and the setup_data
memory areas are handled.

Is there a reason mem_avoid_overlap() can't be used here?

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
