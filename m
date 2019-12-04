Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E7A112916
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 11:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJ4aRo8oLtbIJFO+VZTRnTn455EPIvAe3IByxvp/wjU=; b=heEUxTkCO9yHh/
	7Cd6xbAznD18qspH8/33DMIPsWYLJrMbI2Jo6S3jEnvZeoy1FRRcgnSO2PyGhd6/mP4lQ1IQC5Ent
	BQC/zMiHJV+9Cv3cvSSVHilOzE9hs0da1fVLU3gtFF47+Fe43DyzzL6xPQrvPEgIQuJP/cyT7WM1/
	eE7qOioyb8veIkJyAitKYbQ0u3q54zNXQcHXlYOmi+FC3Xn6Yg3X8QhUGH2URf6RXrLWrKcnVxQ08
	gpd95J/rWEBfs3Mgg1ybZRBZkE0mUnHAHo6rggzb0k+nx3y8Ws3CryBSoa2u2iIFHgXPFhbXgskHJ
	nV1xdHdsikDKIi1hZnqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRfp-0006cb-PU; Wed, 04 Dec 2019 10:14:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRfl-0006bx-Nv
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 10:14:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so7811800wrt.6
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 02:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3SqaxowF8V8CPgMsCKyGumZmEAzs8aY4VegZwp5+TJI=;
 b=f6raTZTe79rlg7+fJKgUTxXXJGhcd07fCb9NQihp35dE+7aiwdBDZ8kKQ7AP+0BxiN
 CBoVs0ibvXFlm+DyTKLnA1St0+1gmLZVP+RJaA4nrHM0bSKAL65Rfd2DksonyBs0L3Cu
 hDubG4qC5KU1pPmIvEOy/UhkIdY41uu3mBR8zfZxQ8d4+Iow+U+CGFyftZEsR372B5Qo
 moteIbv3TNBcxP35csUxJT018haSIcA1ztkkvlRwmiRHHMRfBbCSnaYMZszgFMwWABC+
 UQJTs0EeXjjFTexPavo0XzfzMwSzsdiOrR2wtLSIdECLw+VNstkhiSA3SOZiqNSzxNGV
 1lGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=3SqaxowF8V8CPgMsCKyGumZmEAzs8aY4VegZwp5+TJI=;
 b=CoFcTg91v2mqnY1njBgl7TzA3QVeqcG3XY10S8GSlX3LqD81jEcXil40oopOG83Yfm
 TaZXABa7r8TPmpRiS5bEnRpz9kfsnZdDR1Nd0oJIcg6QzhGTYwiNs3i+AOX6avpnViSV
 PepjQTD+2bwP1v2o1tAymI2tlq7Wnm0ADXvAX2pgHnMoCicUDE5W+efcr1Ss+3gFlJNb
 8NR93yVsNU1B22aZ3BpFFQqfdc+xOBAlrg3jP58JbfJejFYCbvLs7LTCOyFpqBUSF6kd
 hkg3rE6H5O8nQPu89vRvwOa4yucXLIs/Gus95lPM5t1GlL6Ly7RfvJOhw4OKAdq6pxNT
 CV5A==
X-Gm-Message-State: APjAAAWwHb7/wiNqITkPNDy2IadWvmE0nyjZ8gfIPWhXZkkQB88axx8B
 tpCozH15NMImzDovyfaWaRE=
X-Google-Smtp-Source: APXvYqynMfBJtkF2DxLQaA4sUUx4cn+Cwkjpd9I9MD1TWmeTnTAX5UQC4joBUKLuTCYAuFkI9DZozA==
X-Received: by 2002:adf:a746:: with SMTP id e6mr3200398wrd.329.1575454455106; 
 Wed, 04 Dec 2019 02:14:15 -0800 (PST)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
 by smtp.gmail.com with ESMTPSA id r15sm6282851wmh.21.2019.12.04.02.14.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 02:14:14 -0800 (PST)
Date: Wed, 4 Dec 2019 11:14:12 +0100
From: Ingo Molnar <mingo@kernel.org>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
Message-ID: <20191204101412.GD114697@gmail.com>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_021417_780603_352666C3 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


* Dave Young <dyoung@redhat.com> wrote:

> On 12/04/19 at 03:52pm, Dave Young wrote:
> > Michael Weiser reported he got below error during a kexec rebooting:
> > esrt: Unsupported ESRT version 2904149718861218184.
> > 
> > The ESRT memory stays in EFI boot services data, and it was reserved
> > in kernel via efi_mem_reserve().  The initial purpose of the reservation
> > is to reuse the EFI boot services data across kexec reboot. For example
> > the BGRT image data and some ESRT memory like Michael reported. 
> > 
> > But although the memory is reserved it is not updated in X86 e820 table.
> > And kexec_file_load iterate system ram in io resource list to find places
> > for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> > initramfs overwritten the ESRT memory and then the failure happened.
> 
> s/overwritten/overwrote :)  If need a repost please let me know..
> 
> > 
> > Since kexec_file_load depends on the e820 to be updated, just fix this
> > by updating the reserved EFI boot services memory as reserved type in e820.
> > 
> > Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> > bypassed in the reservation code path because they are assumed as reserved.
> > But the reservation is still needed for multiple kexec reboot.
> > And it is the only possible case we come here thus just drop the code
> > chunk then everything works without side effects. 
> > 
> > On my machine the ESRT memory sits in an EFI runtime data range, it does
> > not trigger the problem, but I successfully tested with BGRT instead.
> > both kexec_load and kexec_file_load work and kdump works as well.
> > 
> > Signed-off-by: Dave Young <dyoung@redhat.com>


So I edited this to:

 From: Dave Young <dyoung@redhat.com>

 Michael Weiser reported he got this error during a kexec rebooting:

   esrt: Unsupported ESRT version 2904149718861218184.

 The ESRT memory stays in EFI boot services data, and it was reserved
 in kernel via efi_mem_reserve().  The initial purpose of the reservation
 is to reuse the EFI boot services data across kexec reboot. For example
 the BGRT image data and some ESRT memory like Michael reported.

 But although the memory is reserved it is not updated in the X86 E820 table,
 and kexec_file_load() iterates system RAM in the IO resource list to find places
 for kernel, initramfs and other stuff. In Michael's case the kexec loaded
 initramfs overwrote the ESRT memory and then the failure happened.

 Since kexec_file_load() depends on the E820 table being updated, just fix this
 by updating the reserved EFI boot services memory as reserved type in E820.

 Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
 bypassed in the reservation code path because they are assumed as reserved.

 But the reservation is still needed for multiple kexec reboots,
 and it is the only possible case we come here thus just drop the code
 chunk, then everything works without side effects.

 On my machine the ESRT memory sits in an EFI runtime data range, it does
 not trigger the problem, but I successfully tested with BGRT instead.
 both kexec_load() and kexec_file_load() work and kdump works as well.

Thanks,

	Ingo

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
