Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F991C672C
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 07:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpIIxIeVB/KAzhIKGmjAWKc16LgIKVGZD5BjZjZ94HE=; b=rLBe5fVq04xL6p
	RojBse3Bv2wjB1kfwZy7Gc1g1n+5xPP5JW8DwG9qmoRFcdYkiD/hp65u0XN/PEKAofYGz0SMEmRRM
	UlQxHtgfOZC+gJOrpO4pLoqM8DsXfW16Wn2LJ8ZP3gnuQD0Y/k39udZJ82OgkfyVOzxXdMEwKxVE/
	ZUcwkm3QXAkBDp7zCD2WQ2fADvncZZHQEdaTeg/Kf7SOOh4vLdebBs18sUVWJFnCk9toHdfGKddDh
	5gmhVkFB4HJIcDsS29OwSg0dX9UiQu2CLKqYgysg3Y7aFfnvvbRK32W5kEsAd210JkI3E5RWfUjE6
	YCvMR8MUk2Bk9meRyang==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCEi-0006ml-3V; Wed, 06 May 2020 05:04:48 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCEe-0006lx-SX
 for kexec@lists.infradead.org; Wed, 06 May 2020 05:04:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588741482;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EHXhlexpOjs28817BC5hpR2ue4BT1nkuouq3WQ/LLFg=;
 b=cpDlD2vDS6QEDDm7I/0JQ/SPedY3E9KJesGdYfWN1cFrfEIK71kLecRSyX5wLEzeZfzhDd
 nDUjz7iET3sfwrHirVi3VjOsBLR9x65yaITx2BzjTkwXFcjXQuByYPAepGo9dRw4VSAQ3u
 Cgb/8YYFGQ1uN/YN180Jqsl0gJ5Z/0g=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-oh6Hys_1MlquFzn4Ia9Xew-1; Wed, 06 May 2020 01:04:40 -0400
X-MC-Unique: oh6Hys_1MlquFzn4Ia9Xew-1
Received: by mail-qv1-f71.google.com with SMTP id m20so1020380qvy.13
 for <kexec@lists.infradead.org>; Tue, 05 May 2020 22:04:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KpOKeTMlwPUqZw3AKWDidisP5BlFEm8fe5D0lqvFmu4=;
 b=cu3XX2nugyZFSuFJqbj9rinl072ksPaX2/vysLE29dSk2z9CIvxtxI8dyMSYRBMhkX
 AZJSlMb05vquSlR8HW6/sAxJ1Zx4gZMzNteaAwoVQyp1G1VnrzJNAwRpA1K5srC1Y4Pf
 Z+W4HxGnhUeSh3BvoD8VyzOTqonmztGJVWNg/Vh58fICIgXFZbnHOE15+pR3FU+7PKB7
 u/crdlhgBQchHy86ZDQQM+oKsVoDf2PLyuCJWoMBQ//dRO8C951P+9OUshK0H7ZgbOhT
 2LDgAL+wp9j7vp5U3B/VTBFFvAnKtpNAY6dNYb5hBFPgcYIKzTza4mHLqE0VJBL3LDLO
 XwOw==
X-Gm-Message-State: AGi0PuZZ2v4h3Z86VgXQqfOJaDK89bLmVu5dEjvnOzYZLeEUNbx5HbC5
 +8+HwgoO72gfP2wq0tH0ZVDiL7uA02y5fO2amIcMyBpqjkjQBW7Dh81Xlwh3i1gqhfL7L/7HqTS
 7fwlheNqa8fTwd/Bm39QVLj542+iYe6ydBheL
X-Received: by 2002:a05:6214:1242:: with SMTP id
 q2mr6188944qvv.198.1588741480450; 
 Tue, 05 May 2020 22:04:40 -0700 (PDT)
X-Google-Smtp-Source: APiQypKVGmiq75u5vfcC1Iokiaz06crzjYhtEhd9qQagiN7lp4ZFJMlbiJrqHX9jd7sPmdUaT01LbgKV0sF/zJSstwU=
X-Received: by 2002:a05:6214:1242:: with SMTP id
 q2mr6188915qvv.198.1588741480169; 
 Tue, 05 May 2020 22:04:40 -0700 (PDT)
MIME-Version: 1.0
References: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
 <1588705481-18385-2-git-send-email-bhsharma@redhat.com>
 <20200505.142439.1075452616982863931.davem@davemloft.net>
In-Reply-To: <20200505.142439.1075452616982863931.davem@davemloft.net>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 6 May 2020 10:34:28 +0530
Message-ID: <CACi5LpP+47EEO4YS6TCPPA4-xeu6phXV2uz=8bfWdfggwC73Kg@mail.gmail.com>
Subject: Re: [PATCH 1/2] net: qed*: Reduce RX and TX default ring count when
 running inside kdump kernel
To: David Miller <davem@davemloft.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_220445_007687_6C156E95 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aelior@marvell.com, manishc@marvell.com, netdev@vger.kernel.org,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 GR-everest-linux-l2@marvell.com, Bhupesh SHARMA <bhupesh.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi David,

On Wed, May 6, 2020 at 2:54 AM David Miller <davem@davemloft.net> wrote:
>
> From: Bhupesh Sharma <bhsharma@redhat.com>
> Date: Wed,  6 May 2020 00:34:40 +0530
>
> > -#define NUM_RX_BDS_DEF               ((u16)BIT(10) - 1)
> > +#define NUM_RX_BDS_DEF               ((is_kdump_kernel()) ? ((u16)BIT(6) - 1) : ((u16)BIT(10) - 1))
>
> These parenthesis are very excessive and unnecessary.  At the
> very least remove the parenthesis around is_kdump_kernel().

Thanks a lot for the review.
Sure, will fix this in the v2.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
