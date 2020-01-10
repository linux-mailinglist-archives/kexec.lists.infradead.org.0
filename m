Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404B51379E9
	for <lists+kexec@lfdr.de>; Sat, 11 Jan 2020 00:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOnqSh/qToIL7Xtd/Vy60fe07SbNvM0Ucl9FZXmWUDc=; b=pgR87SM6mwh/FF
	69lkrxvRf8EwPSGKM7ZZJqKi6xsngWEYlNuieR8fOL3+a+Hy+j/5M4WRcml12kdqYZhG0Wywoc9XT
	ci85aYdOU/xCM7r/vgz23XNxJCFIzAqEZSnZR2YD939+aXfTuOJNMczH6sPFycMjRNZmjJceI63ro
	tpbap4XAFH/07M+7UvRc7brHAuwcxv8QeQBR3VY3dVWooQlCC03sBTDNY9Abc11HXVcFU+EKhym0W
	QkBI5afsRq6nFjN3WqJHwv1y0N5/U+JW6CHZ5ELOxlnqXQRX1+pLVZdGRMceXxVs7JWjfbW7IOnSn
	URkophfQIA/PUQNQ8j9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq3GL-0004qs-Cd; Fri, 10 Jan 2020 23:00:17 +0000
Received: from mx0a-002e3701.pphosted.com ([148.163.147.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq3GH-0004qJ-1X
 for kexec@lists.infradead.org; Fri, 10 Jan 2020 23:00:14 +0000
Received: from pps.filterd (m0150241.ppops.net [127.0.0.1])
 by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00AMwwT4016756; Fri, 10 Jan 2020 23:00:05 GMT
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com
 [15.241.140.78])
 by mx0a-002e3701.pphosted.com with ESMTP id 2xf2ht005w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 23:00:05 +0000
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net
 [16.208.49.245])
 by g4t3425.houston.hpe.com (Postfix) with ESMTP id 96EB5B4;
 Fri, 10 Jan 2020 23:00:04 +0000 (UTC)
Received: from anatevka.americas.hpqcorp.net (anatevka.americas.hpqcorp.net
 [10.34.81.30])
 by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id 036C948;
 Fri, 10 Jan 2020 23:00:03 +0000 (UTC)
Date: Fri, 10 Jan 2020 16:00:03 -0700
From: Jerry Hoemann <jerry.hoemann@hpe.com>
To: Khalid Aziz and Shuah Khan <azizkhan@gonehiking.org>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_03:2020-01-10,
 2020-01-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 malwarescore=0 mlxscore=0 priorityscore=1501 suspectscore=0 clxscore=1011
 impostorscore=0 bulkscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-2001100189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_150013_091985_F50FEAF0 
X-CRM114-Status: GOOD (  39.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.147.86 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Reply-To: Jerry.Hoemann@hpe.com
Cc: Kairui Song <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 linux-pci@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Randy Wright <rwright@hpe.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:25:36PM -0700, Khalid Aziz and Shuah Khan wrote:
> On 1/10/20 2:42 PM, Bjorn Helgaas wrote:
> > [+cc Deepa (also working in this area)]
> > 
> > On Thu, Dec 26, 2019 at 03:21:18AM +0800, Kairui Song wrote:
> >> There are reports about kdump hang upon reboot on some HPE machines,
> >> kernel hanged when trying to shutdown a PCIe port, an uncorrectable
> >> error occurred and crashed the system.
> > 
> > Details?  Do you have URLs for bug reports, dmesg logs, etc?
> > 
> >> On the machine I can reproduce this issue, part of the topology
> >> looks like this:
> >>
> >> [0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
> >>           +-01.0-[02]--
> >>           +-01.1-[05]--
> >>           +-02.0-[06]--+-00.0  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
> >>           +-02.1-[0f]--
> >>           +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array Gen9 Controllers
> >>
> >> When shutting down PCIe port 0000:00:02.2 or 0000:00:02.0, the machine
> >> will hang, depend on which device is reinitialized in kdump kernel.
> >>
> >> If force remove unused device then trigger kdump, the problem will never
> >> happen:
> >>
> >>     echo 1 > /sys/bus/pci/devices/0000\:00\:02.2/0000\:07\:00.0/remove
> >>     echo c > /proc/sysrq-trigger
> >>
> >>     ... Kdump save vmcore through network, the NIC get reinitialized and
> >>     hpsa is untouched. Then reboot with no problem. (If hpsa is used
> >>     instead, shutdown the NIC in first kernel will help)
> >>
> >> The cause is that some devices are enabled by the first kernel, but it
> >> don't have the chance to shutdown the device, and kdump kernel is not
> >> aware of it, unless it reinitialize the device.
> >>
> >> Upon reboot, kdump kernel will skip downstream device shutdown and
> >> clears its bridge's master bit directly. The downstream device could
> >> error out as it can still send requests but upstream refuses it.
> > 
> > Can you help me understand the sequence of events?  If I understand
> > correctly, the desired sequence is:
> > 
> >   - user kernel boots
> >   - user kernel panics and kexecs to kdump kernel
> >   - kdump kernel writes vmcore to network or disk
> >   - kdump kernel reboots
> >   - user kernel boots
> > 
> > But the problem is that as part of the kdump kernel reboot,
> > 
> >   - kdump kernel disables bus mastering for a Root Port
> >   - device below the Root Port attempts DMA
> >   - Root Port receives DMA transaction, handles it as Unsupported
> >     Request, sends UR Completion to device
> >   - device signals uncorrectable error
> >   - uncorrectable error causes a crash (Or a hang?  You mention both
> >     and I'm not sure which it is)
> > 
> > Is that right so far?
> > 
> >> So for kdump, let kernel read the correct hardware power state on boot,
> >> and always clear the bus master bit of PCI device upon shutdown if the
> >> device is on. PCIe port driver will always shutdown all downstream
> >> devices first, so this should ensure all downstream devices have bus
> >> master bit off before clearing the bridge's bus master bit.
> >>
> >> Signed-off-by: Kairui Song <kasong@redhat.com>
> >> ---
> >>  drivers/pci/pci-driver.c | 11 ++++++++---
> >>  drivers/pci/quirks.c     | 20 ++++++++++++++++++++
> >>  2 files changed, 28 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> >> index 0454ca0e4e3f..84a7fd643b4d 100644
> >> --- a/drivers/pci/pci-driver.c
> >> +++ b/drivers/pci/pci-driver.c
> >> @@ -18,6 +18,7 @@
> >>  #include <linux/kexec.h>
> >>  #include <linux/of_device.h>
> >>  #include <linux/acpi.h>
> >> +#include <linux/crash_dump.h>
> >>  #include "pci.h"
> >>  #include "pcie/portdrv.h"
> >>  
> >> @@ -488,10 +489,14 @@ static void pci_device_shutdown(struct device *dev)
> >>  	 * If this is a kexec reboot, turn off Bus Master bit on the
> >>  	 * device to tell it to not continue to do DMA. Don't touch
> >>  	 * devices in D3cold or unknown states.
> >> -	 * If it is not a kexec reboot, firmware will hit the PCI
> >> -	 * devices with big hammer and stop their DMA any way.
> >> +	 * If this is kdump kernel, also turn off Bus Master, the device
> >> +	 * could be activated by previous crashed kernel and may block
> >> +	 * it's upstream from shutting down.
> >> +	 * Else, firmware will hit the PCI devices with big hammer
> >> +	 * and stop their DMA any way.
> >>  	 */
> >> -	if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
> >> +	if ((kexec_in_progress || is_kdump_kernel()) &&
> >> +			pci_dev->current_state <= PCI_D3hot)
> >>  		pci_clear_master(pci_dev);
> > 
> > I'm clearly missing something because this will turn off bus mastering
> > in cases where we previously left it enabled.
> > 
> > I was assuming the crash was related to a device doing DMA when the
> > Root Port had bus mastering disabled.  But that must be wrong.
> > 
> > I'd like to understand the crash/hang better because the quirk
> > especially is hard to connect to anything.  If the crash is because of
> > an AER or other PCIe error, maybe another possibility is that we could
> > handle it better or disable signaling of it or something.
> > 
> 
> I am not understanding this failure mode either. That code in
> pci_device_shutdown() was added originally to address this very issue.
> The patch 4fc9bbf98fd6 ("PCI: Disable Bus Master only on kexec reboot")
> shut down any errant DMAs from PCI devices as we kexec a new kernel. In
> this new patch, this is the same code path that will be taken again when
> kdump kernel is shutting down. If the errant DMA problem was not fixed
> by clearing Bus Master bit in this path when kdump kernel was being
> kexec'd, why does the same code path work the second time around when
> kdump kernel is shutting down? Is there more going on that we don't
> understand?
> 

  Khalid,

  I don't believe we execute that code path in the crash case.

  The variable kexec_in_progress is set true in kernel_kexec() before calling
  machine_kexec().  This is the fast reboot case.

  I don't see kexec_in_progress set true elsewhere.


  The code path for crash is different.

  For instance, panic() will call
	-> __crash_kexec()  which calls
		-> machine_kexec().

 So the setting of kexec_in_progress is bypassed.

 Jerry

-- 

-----------------------------------------------------------------------------
Jerry Hoemann                  Software Engineer   Hewlett Packard Enterprise
-----------------------------------------------------------------------------

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
