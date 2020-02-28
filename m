Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4393917408A
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 20:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9mzeyaaN5Oxf4BZRxkzvf6n2dNNGGowXUpzzm7gNho=; b=eIFL3DGRLdJJU2
	NlvyWibcnnpQeNejJg8DR+gKX/zTF7jL6I8YP95Wg7o/qSHQNBZhGnTNJuW4+5/ndRPXq3R+x27uV
	CKhEDIxa58AuSx3TcaUZvH3OE/jjYriu6JsGev5UvAg9dsRw5x01ZrUCTKR7jXFfzjVGo8hYdeTpG
	kng1aPcxU42xwJZgE/xxQ6x2o++MRvFEuY0neo5ShX/1fqtKjv/IF0ju8hW3E8wjTlI8fLq89nPXF
	1lHfhki3+ffjwpyDvY7YIM+qMx/w5OaQh5uHZyUnDsRxubpNwd+n4w9RJziutYNOvLInc5RDfL6qM
	cBhj4S69zAB/dtJsyEnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7lhX-0002Oy-8m; Fri, 28 Feb 2020 19:53:35 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7lhU-0002OO-Et
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 19:53:33 +0000
Received: by mail-il1-x144.google.com with SMTP id x2so3767028ila.9
 for <kexec@lists.infradead.org>; Fri, 28 Feb 2020 11:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JnlDWErKF8mDRNyNgdnTvgmZkvu7Blf7Wpl9qNzdgKE=;
 b=fSBOEP1IAhrdav6hcqPPq6DsovnldH8jwg12SD/B8C6OOHJz2/tIMVB25bjlbjrCqm
 kY5za1kNR4E27ndHju64DGymndfnKxmsNfP1Ks1RfuKQraLKMRsZhm6pKatILJ5pY99h
 qGCsKYc6j4ViyP9VHzpHizkFQGModsCPXJ4AeLzesSqpdg76oXmrObKISA2BqQt5SahX
 rNGKqlHSZh87S059uHUFeBs8mFDBU+TE09Xku624wTmSYsFMciAfxSCcssPJGQ9i1LSX
 1mm08Ghj+WuhUf5kV0aevMw4X+1IPLcGvfgSE7hIc97SWKQDjb6V7VA015sI4CF4g8WL
 h0VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JnlDWErKF8mDRNyNgdnTvgmZkvu7Blf7Wpl9qNzdgKE=;
 b=RXxsret9TTkWWwC+Bu9b7m9y1J4oiyVIlqKHzEq6JyEShXLTUgzEnN4A1Oc6UWyyRV
 1IejMkNS7vAUs+X8fYX+nzCzFWVVRw96fKHowopsZgMARNxvPBwWPxl/EQnHKYcRT5oW
 L/PrE24iAC/1eQhHrYZRF7qxgfwZiuhd8JGRAO9AGfcB7oapaUw6qEDqwswqQL85wzMT
 R83iXkaRoGcnBIpz69uajx9xnAZBGq5B1Wk5dN2KAqL2tY1qk0EfkdBKng3NFAJdqpYO
 ibruaKjP1PHKAa3UnwoikxZuQq/d9WDa4uaq9f9/hSG9T9soQlHLaa2d1WG9ebjQnr56
 W1ag==
X-Gm-Message-State: APjAAAWNHOWnmVGZkW7U8bhiufDbHmS+psTZFpcpDWZJUoNwyvABlitl
 15RyZVU/o1VmYKcDDx4Jq0hYg4pGCUDP1mS5Egg=
X-Google-Smtp-Source: APXvYqxXZ0r2eo6M1S+emYmrQwIWztg8xMvfzYm/JgHMlZSn4ba0L7GEsp02PDYFz4ehlz+b/mjNPY/05Tab1srb1iE=
X-Received: by 2002:a92:8c4b:: with SMTP id o72mr6223898ild.81.1582919610579; 
 Fri, 28 Feb 2020 11:53:30 -0800 (PST)
MIME-Version: 1.0
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
 <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
In-Reply-To: <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Fri, 28 Feb 2020 11:53:19 -0800
Message-ID: <CABeXuvqm1iUGt1GWC9eujuoaACdPiZ2X=3LjKJ5JXKZcXD_z_g@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Kairui Song <kasong@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_115332_525166_A3DE0E35 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [deepa.kernel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Myron Stowe <myron.stowe@redhat.com>, Baoquan He <bhe@redhat.com>,
 linux-pci@vger.kernel.org, kexec@lists.infradead.org,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Randy Wright <rwright@hpe.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Dave Young <dyoung@redhat.com>,
 Khalid Aziz <khalid@gonehiking.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

I think the quirk clearing BME might not solve all the problems, since
endpoint devices can sometimes not honor BME settings.

Better solution to me seems like not letting devices that we cannot
identify send us interrupts. I was working on a patch for this. I'm on
vacation for a couple of weeks and can post an update after I test out
my patch internally.

-Deepa

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
