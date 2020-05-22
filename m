Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2D81DF2B2
	for <lists+kexec@lfdr.de>; Sat, 23 May 2020 01:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w78FLkpOea10AKnmzVN2LeByafRdjvL/u7W7wj7WZwc=; b=HaoLPqScpQ/YQZ
	8yFU3b++oM8ZWFOX0KwxSNNE29J+X1lmv7Dlkc+1cge/WUmae9cUkL7NkXeyrNbP5xfDctLWehgR8
	NymB19X03ZMlRfdWjIrQwLzr/8E/0NVBJZ55Lm/4tfw7XiMGuqBAAXp3OYEMNXeKNIwGrczSR7Tlj
	6gmcTeLMRSmdaJSS3Yr/I8m7CfGa0iC3gofYWBxli06nuVlO2tVWZb1d90g/QyBRCZsyPbct9AyH1
	vC7RU7v5ZKUOAXv8RLwMsr/mTNiqHZ7augXttqFCgV+DwYZi1Gznv8R890Qf0XLO6HCcGuVj9ZTvd
	IUn695xQCHeRLpcn08pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGit-0008Hd-In; Fri, 22 May 2020 23:05:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGio-0008G9-Rs
 for kexec@lists.infradead.org; Fri, 22 May 2020 23:05:00 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s69so5634287pjb.4
 for <kexec@lists.infradead.org>; Fri, 22 May 2020 16:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pUaPVMC09hl06qSXUpE1EvRthGMUA9KIdvTwa/SNtao=;
 b=XIvrI1Age+qLhwfNd+lbSvQYGl4k+WJqvjNvrzTSDg0QHiALujGIk2KrgxJzZyOseb
 JekLWAP02WMFggjTtERAE/1CkVDaU8/NFvKT1QXQT6CgoSAh1H3XHPnfqdrXD1qYNHVV
 WG676jBogc7z1fZC/YRuTSzPBENYiLXZWtFlw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pUaPVMC09hl06qSXUpE1EvRthGMUA9KIdvTwa/SNtao=;
 b=QD6gqipqxs9qMJlGCYizH67U5I74CQkU7xM3fs74F8MTa6DdA1HIiH4pZKuK9gHCQ2
 luobXX7+SzStQFJ2SvROHa9G2FWleMspkljxUhnkDI0qbkJ5rgzLw4P98F9/6ff1+2wR
 zwdx1BD7e1lVXzAnwm87bHnW4LbAj0AfFoMHZzjACvYjAqKgqpr08EXkmLsUeK0xj2rB
 HkKI72FLPAaH6QK74UtSFH+enDiAo3FSto1LzlV8IDk6QNuZmwTa6XaIjSDhFGVjrbkK
 e8CuOfznlX1sfGLZ6De8UsaOK+MArmXyaxEqX/Tcy1cfKN3vZjjCqljfhnq+fXC8LFhp
 Krsg==
X-Gm-Message-State: AOAM530mdcVmpoAV+fqODlGHF7nmB0VPnO4g+y2m5fuYeHLhzyP7DS7Q
 QmJS9yCf0VJ4F6WmhUW41ZMK4A==
X-Google-Smtp-Source: ABdhPJyHbPJWn77LlmiUvns1tpgeNo5nU5pwSjXvY1wZUGSR98Pt3PhFX+KS7CqLzK9zvYsLOV5LZg==
X-Received: by 2002:a17:902:b787:: with SMTP id
 e7mr16308030pls.272.1590188697497; 
 Fri, 22 May 2020 16:04:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id bu7sm6592929pjb.41.2020.05.22.16.04.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:04:56 -0700 (PDT)
Date: Fri, 22 May 2020 16:04:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Scott Branden <scott.branden@broadcom.com>
Subject: Re: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
Message-ID: <202005221551.5CA1372@keescook>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513181736.GA24342@infradead.org>
 <20200515212933.GD11244@42.do-not-panic.com>
 <20200518062255.GB15641@infradead.org>
 <1589805462.5111.107.camel@linux.ibm.com>
 <7525ca03-def7-dfe2-80a9-25270cb0ae05@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7525ca03-def7-dfe2-80a9-25270cb0ae05@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_160458_920110_4708C97D 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 03:24:32PM -0700, Scott Branden wrote:
> On 2020-05-18 5:37 a.m., Mimi Zohar wrote:
> > On Sun, 2020-05-17 at 23:22 -0700, Christoph Hellwig wrote:
> > > On Fri, May 15, 2020 at 09:29:33PM +0000, Luis Chamberlain wrote:
> > > > On Wed, May 13, 2020 at 11:17:36AM -0700, Christoph Hellwig wrote:
> > > > > Can you also move kernel_read_* out of fs.h?  That header gets pu=
lled
> > > > > in just about everywhere and doesn't really need function not rel=
ated
> > > > > to the general fs interface.
> > > > Sure, where should I dump these?
> > > Maybe a new linux/kernel_read_file.h?  Bonus points for a small top
> > > of the file comment explaining the point of the interface, which I
> > > still don't get :)
> > Instead of rolling your own method of having the kernel read a file,
> > which requires call specific security hooks, this interface provides a
> > single generic set of pre and post security hooks.=A0=A0The
> > kernel_read_file_id enumeration permits the security hook to
> > differentiate between callers.
> > =

> > To comply with secure and trusted boot concepts, a file cannot be
> > accessible to the caller until after it has been measured and/or the
> > integrity (hash/signature) appraised.
> > =

> > In some cases, the file was previously read twice, first to measure
> > and/or appraise the file and then read again into a buffer for
> > use.=A0=A0This interface reads the file into a buffer once, calls the
> > generic post security hook, before providing the buffer to the caller.
> >  =A0(Note using firmware pre-allocated memory might be an issue.)
> > =

> > Partial reading firmware will result in needing to pre-read the entire
> > file, most likely on the security pre hook.
> The entire file may be very large and not fit into a buffer.
> Hence one of the reasons for a partial read of the file.
> For security purposes, you need to change your code to limit the amount
> of data it reads into a buffer at one time to not consume or run out of m=
uch
> memory.

Hm? That's not how whole-file hashing works. :)

These hooks need to finish their hashing and policy checking before they
can allow the rest of the code to move forward. (That's why it's a
security hook.) If kernel memory utilization is the primary concern,
then sure, things could be rearranged to do partial read and update the
hash incrementally, but the entire file still needs to be locked,
entirely hashed by hook, then read by the caller, then unlocked and
released.

So, if you want to have partial file reads work, you'll need to
rearchitect the way this works to avoid regressing the security coverage
of these operations.

So, probably, the code will look something like:


file =3D kernel_open_file_for_reading(...)
	file =3D open...
	disallow_writes(file);
	while (processed < size-of-file) {
		buf =3D read(file, size...)
		security_file_read_partial(buf)
	}
	ret =3D security_file_read_finished(file);
	if (ret < 0) {
		allow_writes(file);
		return PTR_ERR(ret);
	}
	return file;

while (processed < size-of-file) {
	buf =3D read(file, size...)
	firmware_send_partial(buf);
}

kernel_close_file_for_reading(file)
	allow_writes(file);


-- =

Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
