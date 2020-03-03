Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BFC178476
	for <lists+kexec@lfdr.de>; Tue,  3 Mar 2020 22:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcGYkPMaDvgzyXtd/lME8NJzEWrxedrdGYF2bgAC1Wo=; b=K41hZq88JlMulH
	BKRkuLFIeEsQ+sfwbmC1iy6iG2LEr00Fa/br5HX5d0dFRZJ9zKFFmUYk6pNsVjQPSSnlwHP0dZmZU
	818ODjvvOmywonxTuhaqsRxV29IgJDb5Nokm8iOEGFBdxlErjymxzFC5/EuI89BWou0h5I+40hWgR
	U3HjeSSz3cep/F8WvumhPfxJlw6eZHPEGM5K5TIGRRkg3AJmioMWHR5IDpoy0BszHxs8lSsxeP9AJ
	JgPVn1iMZ9Om9CWD6fIDx97/0xdmUXP1nzkw4E1DJiVleB0BrAOj03n3akYiqMDTqEe/6iD+KPxE2
	6h9/RKj4rIgSZ9+Z7nhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9EfH-0005rm-SB; Tue, 03 Mar 2020 21:01:19 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EfF-0005rT-42
 for kexec@lists.infradead.org; Tue, 03 Mar 2020 21:01:18 +0000
Received: by mail-io1-xd44.google.com with SMTP id s24so5250551iog.5
 for <kexec@lists.infradead.org>; Tue, 03 Mar 2020 13:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Inwyixh/Xliqd570k8wVQbSetvAGQIzEHwC5SASHA5I=;
 b=dSCmO0gjO6N6Ep7LHrxh+zXrLbsdS2opusnGKvBzMO3qlt47Bu43mQqlgXpuEJXfX9
 xO/AHiFd2YDEw/jDVx6M0htzF1p57qgWPHUH9WReVeEDYMqIIEb3y7d+fBBJcvN2qPXF
 6/5bi4FiRucesnNOfYkHB0WnLhpRFL5apuuogE/0DixF+dYGyYpyVa7Ap8fB2eHPMRHG
 8J01udvAw2EUpUHlNLMWlYSLs0/8JAnJ5ZgfaaswREzRjCjMMTbqwH2XL+hXmxnIx4Pl
 PqwU/WmcVq09M+wzSpmrYRfZN8E7xH1UV3TnyUv4kp4TBTT6AOOlHrzdz/b6pJkeJRrf
 FTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Inwyixh/Xliqd570k8wVQbSetvAGQIzEHwC5SASHA5I=;
 b=oQ/p5kn8VtoyjEU/Lq4RFtj8ekV7J6Q3YSngHcPflD/APRyDqiENQpeptu96cGA4K8
 zvfvZo08AfTmRNLwJ5QotVeW1zKPvGSuORa6t/oheanKzeWcYFVKxioKhWSRcaNQQG2v
 KZC0WMc+/3/IITkWOIoukpOaFoP3w9UepJWmAJTf4Z9vAOVzU+ZZIRjKJrnlZ3sFJUxV
 yIDzaU/OBbwBFlyT6p8KPeu6qvShZ3v7UQHz180AlBg7+h3LVxaza3xNaudHFLgJsdW7
 IKOif8pDN08m5dmxZWt4fi7sfKVV7U7fwyA2rqgWW3QnOy4H1IkumTiS1oORlunC4Gyi
 1d1g==
X-Gm-Message-State: ANhLgQ2EcQPfVrdMmuFNwLibq/xx34fKP5XEHZwCE7uHs3KdWxSn3Ikl
 eUKz3yLgMzh/lMqX51G8n9x5ZEAu9dneY/dFzHM=
X-Google-Smtp-Source: ADFU+vtbkYWtBm/HrVENxCPKK0eVn5EKnhXHq5pDUwR6Q53DQW/c7/4/OU0/6ovo/ftmDbmJ0Gn1Ux28zNMQ3zNobwY=
X-Received: by 2002:a5d:9c93:: with SMTP id p19mr5792564iop.81.1583269275868; 
 Tue, 03 Mar 2020 13:01:15 -0800 (PST)
MIME-Version: 1.0
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
 <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
 <CABeXuvqm1iUGt1GWC9eujuoaACdPiZ2X=3LjKJ5JXKZcXD_z_g@mail.gmail.com>
In-Reply-To: <CABeXuvqm1iUGt1GWC9eujuoaACdPiZ2X=3LjKJ5JXKZcXD_z_g@mail.gmail.com>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Tue, 3 Mar 2020 13:01:04 -0800
Message-ID: <CABeXuvonZpwWfcUef4PeihTJkgH2ZC_RCKuLR3rH3Re4hx36Aw@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Kairui Song <kasong@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_130117_162468_A578D268 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [deepa.kernel[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

I looked at this some more. Looks like we do not clear irqs when we do
a kexec reboot. And, the bootup code maintains the same table for the
kexec-ed kernel. I'm looking at the following code in
intel_irq_remapping.c:

        if (ir_pre_enabled(iommu)) {
                if (!is_kdump_kernel()) {
                        pr_warn("IRQ remapping was enabled on %s but
we are not in kdump mode\n",
                                iommu->name);
                        clear_ir_pre_enabled(iommu);
                        iommu_disable_irq_remapping(iommu);
                } else if (iommu_load_old_irte(iommu))
                        pr_err("Failed to copy IR table for %s from
previous kernel\n",
                               iommu->name);
                else
                        pr_info("Copied IR table for %s from previous kernel\n",
                                iommu->name);
        }

Would cleaning the interrupts(like in the non kdump path above) just
before shutdown help here? This should clear the interrupts enabled
for all the devices in the current kernel. So when kdump kernel
starts, it starts clean. This should probably help block out the
interrupts from a device that does not have a driver.

-Deepa

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
