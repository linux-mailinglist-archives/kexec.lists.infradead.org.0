Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25CF1D7CB7
	for <lists+kexec@lfdr.de>; Mon, 18 May 2020 17:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjkx3Klt19529b2vbRcdzzTwaxImENIjqD9BKm9NsgI=; b=eto76UYLJ9O724
	md+F4BJxTq+8G6MXGcGZC6VK0MrtsCNPIYIRpl4SDHZIPqDRh0n1ZdFF7Pqn+xEKJR/ck/Dozxn6D
	58RKracxbR3t6C8ClmtQeNbLcNhvMyqJyYdNUYnjrQhyr2ZTzUT4MNl2Qc52xtFdnd/B1eZd5x2cq
	8lxrlT5Bb/z6PHNCqe5FrHIZ7ekbNd8Te0re3d6c+xY33ifNCcznjlxzyOX1HBSZD80YPIGDDezTJ
	MFD/QL/G6zCyRJBCK3vtNE0Xh6rxqKRzFbTI2CRoqwKl91tzJXVJCppkg9YAo2+HxYat+F9qlGS6r
	+2zHpAU28ykgq75VDSBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahZp-0001qd-Uh; Mon, 18 May 2020 15:21:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahZn-0001qH-4V
 for kexec@lists.infradead.org; Mon, 18 May 2020 15:21:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id v63so5099919pfb.10
 for <kexec@lists.infradead.org>; Mon, 18 May 2020 08:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=8eIa0Vhcalrg30hExhgbFyLNmHPU3sV6rgHITb5pZ5w=;
 b=htaIZ7s8kHdd9JhXfpJr62T+PbcWV0P9HH48JxCHos2qCOwdAffTSsVfouROZN6Mcx
 OsT1n9x1239rkbG6hdpojAEmxPN0Ini8eKc3MOs0rk/oWTZl1F9JjZbGrWGPiJf+w5zL
 YtiyZ9HL2YUsIAekksROIFa5+16FSNv2M8/J8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8eIa0Vhcalrg30hExhgbFyLNmHPU3sV6rgHITb5pZ5w=;
 b=bqgcwdWPy0eG3VVWchpI9DlNLeYlUCfisH5NmP8AL4hy6dZ+mu/XxTgiSpTIPCVrXb
 El0n/xsDMOsdDaMIGKj/8ZoajT/gbduG8G2homweIthJQfQCs4pHH/RELbisUPSUYcm+
 maNxpTHGivfjiUVNJNzkwgEcZ8I88KVIvDDuHK7ZMTH6kJQL7N/PhxCYAR92tR2BMCux
 2Lh2G53ci7aHFj/+JQ635ZTadouyvXjlN0E4Rp5ywls1nDfeAfjU67zuAcIyW910lPlN
 yrLdyaBOfkNZ41UOReytuh5wmxJfX8P5JCNQ6b/o5+xwzzc49pABi4rG8np9VwQWU4Sp
 tI0g==
X-Gm-Message-State: AOAM532vuym31a2GoQHV522TNsTrdrlGtZvMu2llReXWRLhw5lkOqdJA
 gl6RYrBGM9p5OMUuTMsfpIXcXQ==
X-Google-Smtp-Source: ABdhPJzV/8/H/dtCPYbOvT1/Nbv8m+JVx3a0WuH1CfwiIsZx/wce2vLAkKKd/khb6PmDQ5vsnT0fng==
X-Received: by 2002:a63:1415:: with SMTP id u21mr15114423pgl.366.1589815270596; 
 Mon, 18 May 2020 08:21:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id h7sm6207978pgg.17.2020.05.18.08.21.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 08:21:09 -0700 (PDT)
Date: Mon, 18 May 2020 08:21:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Mimi Zohar <zohar@linux.ibm.com>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
Message-ID: <202005180820.46CEF3C2@keescook>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
 <1589805462.5111.107.camel@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589805462.5111.107.camel@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_082111_194490_65657E25 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: rafael@kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, paul@paul-moore.com,
 nayna@linux.ibm.com, jmorris@namei.org, Christoph Hellwig <hch@infradead.org>,
 geert@linux-m68k.org, dan.carpenter@oracle.com, scott.branden@broadcom.com,
 selinux@vger.kernel.org, viro@zeniv.linux.org.uk, skhan@linuxfoundation.org,
 eparis@parisplace.org, tglx@linutronix.de, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 ebiederm@xmission.com, jeyu@kernel.org, linux-fsdevel@vger.kernel.org,
 linux-integrity@vger.kernel.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 08:37:42AM -0400, Mimi Zohar wrote:
> Hi Christoph,
> =

> On Sun, 2020-05-17 at 23:22 -0700, Christoph Hellwig wrote:
> > On Fri, May 15, 2020 at 09:29:33PM +0000, Luis Chamberlain wrote:
> > > On Wed, May 13, 2020 at 11:17:36AM -0700, Christoph Hellwig wrote:
> > > > Can you also move kernel_read_* out of fs.h?  That header gets pull=
ed
> > > > in just about everywhere and doesn't really need function not relat=
ed
> > > > to the general fs interface.
> > > =

> > > Sure, where should I dump these?
> > =

> > Maybe a new linux/kernel_read_file.h?  Bonus points for a small top
> > of the file comment explaining the point of the interface, which I
> > still don't get :)
> =

> Instead of rolling your own method of having the kernel read a file,
> which requires call specific security hooks, this interface provides a
> single generic set of pre and post security hooks.=A0=A0The
> kernel_read_file_id enumeration permits the security hook to
> differentiate between callers.
> =

> To comply with secure and trusted boot concepts, a file cannot be
> accessible to the caller until after it has been measured and/or the
> integrity (hash/signature) appraised.
> =

> In some cases, the file was previously read twice, first to measure
> and/or appraise the file and then read again into a buffer for
> use.=A0=A0This interface reads the file into a buffer once, calls the
> generic post security hook, before providing the buffer to the caller.
> =A0(Note using firmware pre-allocated memory might be an issue.)
> =

> Partial reading firmware will result in needing to pre-read the entire
> file, most likely on the security pre hook.

Well described! :)

-- =

Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
