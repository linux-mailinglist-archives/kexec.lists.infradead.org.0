Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7F5137A47
	for <lists+kexec@lfdr.de>; Sat, 11 Jan 2020 00:37:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeu8iSf3t417+KaFq5OpBJbrKCE78oeKN+qQFBGpeEs=; b=qOHG+2+bq+mfgg
	ebs/aLzlWtmXUYvzSjq+5gZB0agsoQbFdIg4R4FPxMJu2SAlP/vRCcZ9e786ovNxt/7QB1L1DVM6F
	cEUOpRKGy2LxprJGq8ldPwOakk0vUqZIA9pdb80lWIck8egrzzrrtBoP/NPA6ntFQ2I7N9Bz4Lhwf
	mgTXAczdOwr+XTmv9hAxkK+X301ZHtD2NF8X+VOdwAGRkeLYbRNZvlYMG6rW4AoaEu6qrcda4KfT3
	02wvuFg5j2KLcpg5StKnRPhxlSi4LVzQvdsho/R3OgX09hDiIoO0roOiaf5Y4gkW4BtdQkUUeJqk3
	tIUH3zkrVFB06nc9S9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq3pv-0008IC-6O; Fri, 10 Jan 2020 23:37:03 +0000
Received: from mx0b-002e3701.pphosted.com ([148.163.143.35])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq3ps-0008HV-17
 for kexec@lists.infradead.org; Fri, 10 Jan 2020 23:37:01 +0000
Received: from pps.filterd (m0150244.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ANYbsS010254; Fri, 10 Jan 2020 23:36:57 GMT
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com
 [15.241.140.78])
 by mx0b-002e3701.pphosted.com with ESMTP id 2xenc0pf20-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 23:36:57 +0000
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net
 [16.208.49.245])
 by g4t3425.houston.hpe.com (Postfix) with ESMTP id A879892;
 Fri, 10 Jan 2020 23:36:56 +0000 (UTC)
Received: from anatevka.americas.hpqcorp.net (anatevka.americas.hpqcorp.net
 [10.34.81.30])
 by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id 4533E47;
 Fri, 10 Jan 2020 23:36:56 +0000 (UTC)
Date: Fri, 10 Jan 2020 16:36:56 -0700
From: Jerry Hoemann <jerry.hoemann@hpe.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200110233656.GC1875851@anatevka.americas.hpqcorp.net>
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200110214217.GA88274@google.com>
Content-Disposition: inline
In-Reply-To: <20200110214217.GA88274@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_04:2020-01-10,
 2020-01-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1910280000 definitions=main-2001100193
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_153700_194081_D01B7983 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.143.35 listed in list.dnswl.org]
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
 Deepa Dinamani <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:42:17PM -0600, Bjorn Helgaas wrote:
> [+cc Deepa (also working in this area)]
> 
> On Thu, Dec 26, 2019 at 03:21:18AM +0800, Kairui Song wrote:
> > There are reports about kdump hang upon reboot on some HPE machines,
> > kernel hanged when trying to shutdown a PCIe port, an uncorrectable
> > error occurred and crashed the system.
> 
> Details?  Do you have URLs for bug reports, dmesg logs, etc?

Hi, Bjorn,

Not sure if you have access to Red Hat Bugzilla, but I filed:

	https://bugzilla.redhat.com/show_bug.cgi?id=1774802

When I hit this issue.



> 
> > On the machine I can reproduce this issue, part of the topology
> > looks like this:
> > 
> > [0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
> >           +-01.0-[02]--
> >           +-01.1-[05]--
> >           +-02.0-[06]--+-00.0  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
> >           +-02.1-[0f]--
> >           +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array Gen9 Controllers
> > 
> > When shutting down PCIe port 0000:00:02.2 or 0000:00:02.0, the machine
> > will hang, depend on which device is reinitialized in kdump kernel.
> > 
> > If force remove unused device then trigger kdump, the problem will never
> > happen:
> > 
> >     echo 1 > /sys/bus/pci/devices/0000\:00\:02.2/0000\:07\:00.0/remove
> >     echo c > /proc/sysrq-trigger
> > 
> >     ... Kdump save vmcore through network, the NIC get reinitialized and
> >     hpsa is untouched. Then reboot with no problem. (If hpsa is used
> >     instead, shutdown the NIC in first kernel will help)
> > 
> > The cause is that some devices are enabled by the first kernel, but it
> > don't have the chance to shutdown the device, and kdump kernel is not
> > aware of it, unless it reinitialize the device.
> > 
> > Upon reboot, kdump kernel will skip downstream device shutdown and
> > clears its bridge's master bit directly. The downstream device could
> > error out as it can still send requests but upstream refuses it.
> 
> Can you help me understand the sequence of events?  If I understand
> correctly, the desired sequence is:
> 
>   - user kernel boots
>   - user kernel panics and kexecs to kdump kernel
>   - kdump kernel writes vmcore to network or disk

Some context:

The problem for me hits itermittently during shutdown of the kdump kernel.
During this time, the SUT sometimes gets a PCI error that raises an NMI.

The reaction to the NMI that the kdump kernel takes is problematic.
Sometimes the system prints the tombstones and resets through firmware
without problems.  Other times it takes a second NMI and hangs.

I'll note that the kdump initrd doesn't contain the NIC drivers.  When
these are added, we don't see the issue.


Jerry

-- 

-----------------------------------------------------------------------------
Jerry Hoemann                  Software Engineer   Hewlett Packard Enterprise
-----------------------------------------------------------------------------

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
