Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2ECDF56C
	for <lists+kexec@lfdr.de>; Mon, 21 Oct 2019 20:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/mPDwSIru8ix3H5G44VoVWjq46Er+qSYOzU265fHII=; b=I1QH2IDETylwM1
	XD/4NPsTZA2LKuzOmVhdv3cS65WmhSc9L5u5LdUAks+5A5PBTXdN9eg+9HDBysyh1+om/q7RFPckS
	NNZgGJBmBsS4z/T36cTb5tr22iMnfUttntFzBX8jHzzphaejzkRZ6WOZr9xKsyQ/yW3UsUnsWBox4
	g+HaBbXrg1wzBzoNSfHhUVlToZrGLBETQ41ctdm2mclbZkVmmAjeHjmHEEuYenJT6furUeogPNi7m
	oZZ4K4lRj1nTZhojPaG6FY1JxoPWCid+lUcW166rbYBxBIT8OsGVKit4BzbI6G7KUxCdz57TGxmQc
	PiSiD8lvV63FLwOOKtdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMco8-00087x-Nn; Mon, 21 Oct 2019 18:53:32 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMco5-00086q-80
 for kexec@lists.infradead.org; Mon, 21 Oct 2019 18:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571684004;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WZCKXLMVyUlL+44GEGPg+886HYvJBs+TUVemT7Ert4I=;
 b=DDLGmia01XcgujyRpUndbqGzoUItkzeO4Ib8azgE/oHEs4vDTfj7OQ6/NOenYIMZ0YiIZc
 isZZ0BReiImlfAZnCl4hu1juJh245oOagkOOFuigrdeMMhuhArlyiqT8+tWk9mspyaFbwI
 0V+UK8oIDkt9jwRCSOG31P6q6IQf7JM=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-129-QEjJnis2PFaKgQH9KwMCWQ-1; Mon, 21 Oct 2019 14:53:21 -0400
Received: by mail-lj1-f199.google.com with SMTP id m22so2598145ljj.6
 for <kexec@lists.infradead.org>; Mon, 21 Oct 2019 11:53:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PZy4oNa7xXeEzV6xzT6o+YvcPpBLw3zX4n0dfurERSA=;
 b=mohP7xONtmylVc2HNXRTDqtFW8G5Jd1fYFZXPY8R8hkV3MgkhujoOYIbHNAd4/aSbO
 m1uGdQ7C+Jeh2pqMg5xkfs9poP0JWFoWfcbybnK1c55qJzhd7jwsEXm7iyPDj31M31Vx
 GohbEcfQJD/7LIjitz1GTelA0Ssz3b1Z7IPnvPxK5yHhMwRyYlGbkc0NgGuFRoObToKU
 yTLAIC1U1nj0ObLIX/pA3usORfgJhpsTJobRB/8thUIxx7lAb7sdfwhcWMQjjbRA3/AW
 A+q2zhinwQmiQpZtEXBQjcJM+Ad8VEtm2+3+ogVotIcToy8UvtKuRSZBU+6HSb+fNPR4
 bG9w==
X-Gm-Message-State: APjAAAXjpnh+3Vg6PnADmMCOcMvGdOGEDs5d/ydsNJYI7xKEGX7eZddN
 h2Y8Bcv4jWno7DnxxHpYxNualBvhiY8B0V9igs/BQ5ROHo9k9vLOCa+EG0OKQ0m0IsLoYCnMBVf
 7Qlj8i1U+sqSUOpjmg6S1DOMYMUt4qcLpsezz
X-Received: by 2002:a2e:8684:: with SMTP id l4mr16934211lji.87.1571684000436; 
 Mon, 21 Oct 2019 11:53:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyXcjEdq+O2mvIkB01B7YAcyLZ09bLrrM9gYyNPRHCFzDgdarorBThfSyqZujHAZoVTcxZzs0aLb8g35ewiddc=
X-Received: by 2002:a2e:8684:: with SMTP id l4mr16934195lji.87.1571684000155; 
 Mon, 21 Oct 2019 11:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
In-Reply-To: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 22 Oct 2019 00:23:07 +0530
Message-ID: <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
Subject: Re: Makedumpfile help for 5.4.0.rc3 : Arm
To: John Donnelly <john.p.donnelly@oracle.com>
X-MC-Unique: QEjJnis2PFaKgQH9KwMCWQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_115329_366175_4F2BF375 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello John,

On Mon, Oct 21, 2019 at 9:39 PM John Donnelly
<john.p.donnelly@oracle.com> wrote:
>
>
>
> Hello,
>
>
> Kazuhito Hagio asked me to share my test results on this patch for makedumpfile :
>
>
> https://sourceforge.net/p/makedumpfile/code/ci/7bdb468c2c99dd780c9a5321f93c79cbfdce2527/
>
> And I was successfully able to get vmcore dumps on vmlinuz-5.3.6 and 5.4.0-rc3 Intel ( x86-64) kernels.
>
> I am still having difficulties getting vmcores on 5.4.0.rc3   Arm kernels with this update to makedumpfile.
>
> I get this message;
>
>
> Buffer size for the cyclic mode: 3145728
> va_bits      : 47
> page_offset  : ffffc00000000000
> calculate_plat_config: PAGE SIZE 0x10000 and VA Bits 47 not supported
> get_machdep_info_arm64: Can't determine platform config values
>
> makedumpfile Failed.
>
>
> Any suggestions welcomed

I am working on the changes in the vmcoreinfo after the 52-bit VA
changes from Steve were accepted in Linux 5.4-rc1 ("Support for 52-bit
virtual addressing in kernel space").

The suggestions during the last set of reviews (my v3 patchset) was to
introduce arch specific details like TCR_EL1.TxSZ in the vmcoreinfo
and also to wait for the 52-bit changes to make way upstream (as I
raised a couple of issues/kernel panic issues) earlier with the 52-bit
VA changes from Steve.

I plan to send out the v4 patchset later this week (and will Cc you so
that you can test the same).

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
